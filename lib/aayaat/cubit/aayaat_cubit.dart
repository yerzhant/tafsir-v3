import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fpdart/fpdart.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tafsir/aayaat/cubit/scroll_position_cubit.dart';
import 'package:tafsir/aayaat/db/aayaat_db.dart';
import 'package:tafsir/aayaat/domain/aayah.dart';
import 'package:tafsir/aayaat/domain/ayah_position.dart';
import 'package:tafsir/aayaat/domain/widgets_heights_service.dart';
import 'package:tafsir/aayaat/ui/ayah_card.dart';
import 'package:tafsir/aayaat/ui/surah_header.dart';
import 'package:tafsir/aayaat/ui/surah_navigator.dart';
import 'package:tafsir/common/domain/error.dart';
import 'package:tafsir/common/domain/scope_functions.dart';
import 'package:tafsir/main/cubit/main_cubit.dart';
import 'package:tafsir/main/db/main_db.dart';
import 'package:tafsir/main/domain/last_read.dart';
import 'package:tafsir/main/domain/surah.dart';

part 'aayaat_cubit.freezed.dart';
part 'aayaat_state.dart';

const _maxLastReads = 30;

class AayaatCubit extends Cubit<AayaatState> {
  AayaatCubit(
    this._context,

    this._mainDb,
    this._aayaatDb,
    this._heightsService,

    this._suwar,
    this._mainCubit,
    this._surahNumber,
    this._aayahPosition,
  ) : super(const .inProgress());

  final MainDb _mainDb;
  final AayaatDb _aayaatDb;
  final MainCubit _mainCubit;

  final BuildContext _context;

  final List<Surah> _suwar;
  final SurahNumber _surahNumber;
  final AyahPosition _aayahPosition;

  final WidgetsHeightsService _heightsService;

  late final Surah _surah;
  late final List<Aayah> _aayaat;

  late List<double> _cardOffsets;

  Future<void> init() => TaskEither<AppError, void>.Do(
    ($) async {
      emit(const .inProgress());

      _heightsService.init(_context, _mainCubit, _suwar);

      _surah = await $(_mainDb.getSurah(_surahNumber));

      _aayaat = await $(_aayaatDb.getAayaat(_surah));

      final bookmarks = await $(
        _mainDb.getBookmarkAayahNumbersForSurah(_surah),
      );

      final heightsResult = await $(_heightsService.getFor(_surah, _aayaat));

      _cardOffsets = heightsResult.offsets;

      emit(
        .success(
          surah: _surah,
          aayaat: _aayaat,
          bookmarks: bookmarks,
          scrollProgressMax: heightsResult.maxOffset,
          inProgerss: false,
        ),
      );

      WidgetsBinding.instance.addPostFrameCallback(
        (_) {
          emit(
            (state as AayaatStateSuccess).copyWith(
              jumpTo: _aayahPosition.number
                  .takeIf((it) => it > 1)
                  ?.let((it) => .new(_cardOffsets[it - 1])),
            ),
          );

          emit((state as AayaatStateSuccess).copyWith(jumpTo: null));
        },
      );
    },
  ).mapLeft((l) => emit(.failure(l))).run();

  Future<void> measureHeights() => TaskEither<AppError, void>.Do(
    ($) async {
      final s = state;

      if (s is! AayaatStateSuccess) return;

      emit(s.copyWith(inProgerss: true));

      final heightsResult = await $(_heightsService.getFor(_surah, _aayaat));

      _cardOffsets = heightsResult.offsets;

      emit(
        s.copyWith(
          inProgerss: false,
          scrollProgressMax: heightsResult.maxOffset,
        ),
      );

      emit(s.copyWith(scrollProgressMax: null));
    },
  ).mapLeft((l) => emit(.failure(l))).run();

  Future<void> savePosition(ScrollPositionCurrent offset) =>
      TaskEither<AppError, void>.Do(
        ($) async {
          final aayahNumber = getCurrentAaayahNumber(offset);

          final lastRead = LastRead(
            .now(),
            _surah.name,
            _surahNumber,
            .new(aayahNumber, 0),
          );

          final lastReads = await $(_mainDb.getLastReads());

          if (lastReads.isNotEmpty &&
              lastReads.first.surahNumber == lastRead.surahNumber &&
              lastReads.first.ayahPosition == lastRead.ayahPosition) {
            return;
          }

          await $(_mainDb.addLastRead(lastRead));

          for (final lastRead in lastReads.skip(_maxLastReads - 1)) {
            await $(_mainDb.removeLastRead(lastRead));
          }

          await _mainCubit.refresh();
        },
      ).mapLeft((l) => emit(.failure(l))).run();

  AayahNumber getCurrentAaayahNumber(ScrollPositionCurrent offset) {
    return _findCurrentAayahIndex(offset).let((it) => .new(it + 1));
  }

  int _findCurrentAayahIndex(ScrollPositionCurrent offset) {
    if (offset <= _cardOffsets.first) return 0;
    if (offset >= _cardOffsets.last) return _cardOffsets.length - 1;

    int low = 0;
    int high = _cardOffsets.length - 1;

    while (low <= high) {
      int mid = (low + high) ~/ 2;
      double midOffset = _cardOffsets[mid];

      if (midOffset == offset) {
        return mid;
      } else if (midOffset < offset) {
        if (mid + 1 < _cardOffsets.length && offset < _cardOffsets[mid + 1]) {
          return mid;
        }

        low = mid + 1;
      } else {
        if (mid - 1 >= 0 && offset >= _cardOffsets[mid - 1]) {
          return mid - 1;
        }

        high = mid - 1;
      }
    }

    return 0;
  }

  Future<void> toggleBookmark(AayahNumber aayahNumber) =>
      TaskEither<AppError, void>.Do(
        ($) async {
          final s = state as AayaatStateSuccess;

          if (s.bookmarks.elem(aayahNumber)) {
            await $(_mainDb.removeBookmark(_surahNumber, aayahNumber));
            emit(
              s.copyWith(
                bookmarks: s.bookmarks
                    .where((element) => element != aayahNumber)
                    .toSet(),
              ),
            );
          } else {
            await $(_mainDb.addBookmark(_surahNumber, aayahNumber));
            emit(s.copyWith(bookmarks: {...s.bookmarks, aayahNumber}));
          }

          await _mainCubit.refresh();
        },
      ).mapLeft((l) => emit(.failure(l))).run();

  void goToAayah(AayahNumber number) {
    final s = state as AayaatStateSuccess;
    emit(s.copyWith(scrollTo: .new(_cardOffsets[number - 1])));
    emit(s.copyWith(scrollTo: null));
  }
}
