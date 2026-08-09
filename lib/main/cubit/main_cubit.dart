import 'package:bloc/bloc.dart';
import 'package:fpdart/fpdart.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tafsir/common/domain/error.dart';
import 'package:tafsir/main/db/main_db.dart';
import 'package:tafsir/main/domain/bookmark.dart';
import 'package:tafsir/main/domain/djuz.dart';
import 'package:tafsir/main/domain/last_read.dart';
import 'package:tafsir/main/domain/muqaddimah.dart';
import 'package:tafsir/main/domain/surah.dart';

part 'main_state.dart';
part 'main_cubit.freezed.dart';

class MainCubit extends Cubit<MainState> {
  MainCubit(this._db) : super(const .success(.suwar, [], [], [], [], []));

  final MainDb _db;

  Future<void> init() => TaskEither<AppError, void>.Do(
    ($) async {
      emit(const .success(.suwar, [], [], [], [], []));

      final suwar = await $(_db.getSuwar());
      final adjzaa = await $(_db.getAdjzaa());
      final bookmarks = await $(_db.getBookmarks());
      final lastReads = await $(_db.getLastReads());
      final muqaddimat = await $(_db.getMuqaddimat());

      emit(.success(.suwar, suwar, adjzaa, bookmarks, lastReads, muqaddimat));
    },
  ).mapLeft((l) => emit(.failure(l))).run();

  Future<void> refresh() => TaskEither<AppError, void>.Do(
    ($) async {
      final bookmarks = await $(_db.getBookmarks());
      final lastReads = await $(_db.getLastReads());

      emit(
        (state as MainStateSuccess).copyWith(
          bookmarks: bookmarks,
          lastReads: lastReads,
        ),
      );
    },
  ).mapLeft((l) => emit(.failure(l))).run();

  void suwar() => emit(
    (state as MainStateSuccess).copyWith(tab: .suwar),
  );

  void adjzaa() => emit(
    (state as MainStateSuccess).copyWith(tab: .adjzaa),
  );

  void bookmarks() => emit(
    (state as MainStateSuccess).copyWith(tab: .bookmarks),
  );
}
