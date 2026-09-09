import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:fpdart/fpdart.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tafsir/aayaat/cubit/scroll_position_cubit.dart';
import 'package:tafsir/aayaat/db/aayaat_db.dart';
import 'package:tafsir/aayaat/domain/aayah.dart';
import 'package:tafsir/aayaat/domain/ayah_position.dart';
import 'package:tafsir/aayaat/ui/ayah_card.dart';
import 'package:tafsir/aayaat/ui/surah_header.dart';
import 'package:tafsir/aayaat/ui/widgets_heights_measurer.dart';
import 'package:tafsir/common/domain/error.dart';
import 'package:tafsir/main/cubit/main_cubit.dart';
import 'package:tafsir/main/db/main_db.dart';
import 'package:tafsir/main/domain/last_read.dart';
import 'package:tafsir/main/domain/surah.dart';

part 'aayaat_cubit.freezed.dart';
part 'aayaat_state.dart';

const _maxLastReads = 30;

class AayaatCubit extends Cubit<AayaatState> {
  AayaatCubit(
    this._mainDb,
    this._aayaatDb,
    this._mainCubit,
    this._surahNumber,
    this._position,
  ) : super(const .inProgress());

  final MainDb _mainDb;
  final AayaatDb _aayaatDb;
  final MainCubit _mainCubit;
  final SurahNumber _surahNumber;
  final AyahPosition _position;

  late final Surah _surah;
  late final List<Aayah> _aayaat;

  final List<double> _cardOffsets = [];

  Future<void> init() => TaskEither<AppError, void>.Do(
    ($) async {
      emit(const .inProgress());

      _surah = await $(_mainDb.getSurah(_surahNumber));

      _aayaat = await $(_aayaatDb.getAayaat(_surah));

      final bookmarks = await $(
        _mainDb.getBookmarkAayahNumbersForSurah(_surah),
      );

      emit(
        .success(
          _surah,
          _aayaat,
          bookmarks,
          _position,
          const .new(0),
          false,
        ),
      );
    },
  ).mapLeft((l) => emit(.failure(l))).run();

  Future<void> measureHeights(BuildContext context) =>
      TaskEither<AppError, void>.Do(
        ($) async {
          print('================== measure started');

          final screenWidth = MediaQuery.of(context).size.width;
          final cardWidth = screenWidth - 40;

          final headerHeight = (await $(
            WidgetsHeightsMeasurer.process(context, [
              SurahHeader(
                surah: _surah,
                onInfo: () {},
                onSuwar: () {},
                onTheme: () {},
                onSettings: () {},
                onGoToAyah: () {},
              ),
            ], screenWidth),
          )).first;

          final widgets = _aayaat
              .map((e) => AyahCard(ayah: e, surah: _surah, isBookmarked: false))
              .toList();

          final heights = await $(
            // ignore: use_build_context_synchronously
            WidgetsHeightsMeasurer.process(context, widgets, cardWidth),
          );

          _cardOffsets.clear();
          _cardOffsets.add(headerHeight);
          var offset = headerHeight.value;

          for (final height in heights) {
            offset += height + 8;
            _cardOffsets.add(offset);
          }

          print('================== offsets: $_cardOffsets');
        },
      ).mapLeft((l) => emit(.failure(l))).run();

  void onScroll(ScrollController controller) {
    if (!controller.hasClients || controller.position.maxScrollExtent == 0) {
      return;
    }

    final double maxScroll = controller.position.maxScrollExtent;
    final double currentScroll = controller.offset.clamp(0.0, maxScroll);

    emit(
      (state as AayaatStateSuccess).copyWith(
        scrollProgress: .new(currentScroll / maxScroll),
      ),
    );
  }

  int _findCurrentIndex(double offset) {
    if (_cardOffsets.isEmpty) return 0;

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

  Future<void> savePosition(AyahPosition position) =>
      TaskEither<AppError, void>.Do(
        ($) async {
          final lastRead = LastRead(
            .now(),
            _surah.name,
            _surahNumber,
            position,
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

    emit(
      s.copyWith(
        scrollToPosition: .new(number, 0),
        scrollToNewPosition: true,
      ),
    );

    emit(s.copyWith(scrollToNewPosition: false));
  }
}
