import 'package:bloc/bloc.dart';
import 'package:fpdart/fpdart.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tafsir/common/domain/arabic_normalizer.dart';
import 'package:tafsir/common/domain/debouncer.dart';
import 'package:tafsir/common/domain/error.dart';
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
  SearchCubit(this._db) : super(const .new(false, null, .everyWhere, []));

  final SearchDb _db;

  final _debouncer = Debouncer(const .new(milliseconds: 500));

  late int _timestamp;

  void delayedSearch(SearchPhrase phrase) => _debouncer.run(
    () => search(phrase),
  );

  void search(SearchPhrase phrase) => TaskEither<AppError, void>.Do(
    ($) async {
      final timestamp = DateTime.now().microsecondsSinceEpoch;
      _timestamp = timestamp;

      phrase = SearchPhrase(normalizeArabic(phrase).toLowerCase().trim());

      if (phrase.isEmpty) return;

      emit(state.copyWith(searching: true));

      final contents = await $(switch (state.searchIn) {
        .everyWhere => _db.searchEverywhereFor(phrase),
        .bookmarks => _db.searchInBookmarkedFor(phrase),
      });

      if (timestamp != _timestamp) return;

      final items = [
        for (final content in contents) await $(_getItem(content, phrase)),
      ];

      if (timestamp != _timestamp) return;

      emit(state.copyWith(items: items, searching: false));
    },
  ).mapLeft((l) => emit(state.copyWith(error: l))).run();

  TaskEither<AppError, FoundItem> _getItem(
    SearchContent searchContent,
    SearchPhrase phrase,
  ) => .Do(($) async {
    final content = searchContent.content;

    final start = content.toLowerCase().indexOf(phrase);
    final end = start + phrase.length;

    final prefix = content.indexOfPrefix(start, _minPrefix, _maxPrefix);
    final suffix = content.indexOfSuffix(end, _minSuffix, _maxSuffix);

    return .new(
      surahName: searchContent.surahName,
      surahNumber: searchContent.surahNumber,
      aayahNumber: searchContent.aayahNumber,
      text: .new(content.substring(start, end)),
      prefix: .new(content.substring(prefix, start)),
      suffix: .new(content.substring(end, suffix)),
    );
  });

  void setSearchIn(SeachIn searchIn, SearchPhrase phrase) {
    emit(state.copyWith(searchIn: searchIn, items: []));
    search(phrase);
  }

  void clearError() => emit(state.copyWith(error: null, searching: false));
}
