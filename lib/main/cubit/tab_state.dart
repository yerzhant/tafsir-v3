part of 'tab_cubit.dart';

@freezed
sealed class TabState with _$TabState {
  const factory TabState.suwar() = TabStateSuwar;
  const factory TabState.adjzaa() = TabStateAdjzaa;
  const factory TabState.bookmarks() = TabStateBookmarks;
}
