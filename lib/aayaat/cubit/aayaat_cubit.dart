import 'package:bloc/bloc.dart';
import 'package:fpdart/fpdart.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tafsir/aayaat/db/aayaat_db.dart';
import 'package:tafsir/aayaat/domain/aayah.dart';
import 'package:tafsir/aayaat/domain/ayah_position.dart';
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

  Future<void> init() => TaskEither<AppError, void>.Do(
    ($) async {
      emit(const .inProgress());

      _surah = await $(_mainDb.getSurah(_surahNumber));
      final aayaat = await $(_aayaatDb.getAayaat(_surah));
      final bookmarks = await $(
        _mainDb.getBookmarkAayahNumbersForSurah(_surah),
      );

      emit(.success(_surah, _position, aayaat, bookmarks));
    },
  ).mapLeft((l) => emit(.failure(l))).run();

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

  void scrollTo(AyahPosition position) {
    final aayah = switch (position.number) {
      < 1 => 1,
      _ when position.number > _surah.quantity => _surah.quantity,
      _ => position.number,
    };

    emit(
      (state as AayaatStateSuccess).copyWith(
        position: position.copyWith(number: .new(aayah)),
      ),
    );
  }
}
