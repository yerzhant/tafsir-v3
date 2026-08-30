part of 'search_cubit.dart';

enum SeachIn { everyWhere, bookmarks }

@freezed
abstract class SearchState with _$SearchState {
  const factory SearchState(
    bool searching,
    AppError? error,
    SeachIn searchIn,
    List<FoundItem> items,
  ) = _State;
}
