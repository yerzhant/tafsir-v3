import 'package:bloc/bloc.dart';
import 'package:fpdart/fpdart.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tafsir/common/domain/arabic_normalizer.dart';
import 'package:tafsir/common/domain/error.dart';
import 'package:tafsir/main/db/main_db.dart';
import 'package:tafsir/search/db/search_db.dart';
import 'package:tafsir/search/domain/found_item.dart';
import 'package:tafsir/search/domain/index_of_space.dart';
import 'package:tafsir/search/domain/search_content.dart';

part 'search_cubit.freezed.dart';
part 'search_state.dart';

const _minPrefix = 5;
const _maxPrefix = 10;

const _minSuffix = 10;
const _maxSuffix = 30;

class SearchCubit extends Cubit<SearchState> {
  SearchCubit(this._db, this._mainDb)
    : super(const .new(false, null, .everyWhere, []));

  final SearchDb _db;
  final MainDb _mainDb;

  void search(SearchPhrase phrase) => TaskEither<AppError, void>.Do(
    ($) async {
      phrase = SearchPhrase(normalizeArabic(phrase).toLowerCase().trim());

      if (phrase.isEmpty) return;

      emit(state.copyWith(searching: true));

      final contents = await $(_db.searchEverywhereFor(phrase));

      final items = [
        for (final content in contents) await $(_getItem(content, phrase)),
      ];

      emit(state.copyWith(items: items, searching: false));
    },
  ).mapLeft((l) => emit(state.copyWith(error: l))).run();

  TaskEither<AppError, FoundItem> _getItem(
    SearchContent searchContent,
    SearchPhrase phrase,
  ) => .Do(($) async {
    final surah = await $(_mainDb.getSurah(searchContent.surahNumber));

    final content = searchContent.content;

    final start = content.toLowerCase().indexOf(phrase);
    final end = start + phrase.length;

    final prefix = content.indexOfPrefix(start, _minPrefix, _maxPrefix);
    final suffix = content.indexOfSuffix(end, _minSuffix, _maxSuffix);

    return .new(
      surah: surah,
      aayahNumber: searchContent.aayahNumber,
      text: .new(content.substring(start, end)),
      prefix: .new(content.substring(prefix, start)),
      suffix: .new(content.substring(end, suffix)),
    );
  });

  void setSearchIn(SeachIn searchIn) => emit(
    state.copyWith(searchIn: searchIn),
  );

  void clearError() => emit(state.copyWith(error: null, searching: false));
}
