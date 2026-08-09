part of 'main_cubit.dart';

enum MainTab { suwar, adjzaa, bookmarks }

@freezed
sealed class MainState with _$MainState {
  const factory MainState.success(
    MainTab tab,
    List<Surah> suwar,
    List<Djuz> adjzaa,
    List<Bookmark> bookmarks,
    List<LastRead> lastReads,
    List<Muqaddimah> muqaddimat,
  ) = MainStateSuccess;

  const factory MainState.failure(AppError error) = MainStateFailure;
}
