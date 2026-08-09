import 'package:bloc/bloc.dart';
import 'package:fpdart/fpdart.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tafsir/aayaat/db/aayaat_db.dart';
import 'package:tafsir/aayaat/domain/aayah.dart';
import 'package:tafsir/aayaat/domain/ayah_position.dart';
import 'package:tafsir/common/domain/error.dart';
import 'package:tafsir/main/db/main_db.dart';
import 'package:tafsir/main/domain/surah.dart';

part 'aayaat_cubit.freezed.dart';
part 'aayaat_state.dart';

class AayaatCubit extends Cubit<AayaatState> {
  AayaatCubit(
    this._surah,
    this._position,
    this._mainDb,
    this._aayaatDb,
  ) : super(.success(_position, [], {}));

  final Surah _surah;
  final MainDb _mainDb;
  final AayaatDb _aayaatDb;
  final AyahPosition _position;

  Future<void> init() => TaskEither<AppError, void>.Do(
    ($) async {
      emit(.success(_position, [], {}));

      final aayaat = await $(_aayaatDb.getAayaat(_surah));

      final bookmarks = await $(
        _mainDb.getBookmarkAayaatForSurah(_surah.number),
      );

      emit(.success(_position, aayaat, bookmarks));
    },
  ).mapLeft((l) => emit(.failure(l))).run();

  void scrollTo(AyahPosition position) => emit(
    (state as AayaatStateSuccess).copyWith(position: position),
  );
}
