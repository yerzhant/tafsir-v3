part of 'aayaat_cubit.dart';

@freezed
sealed class AayaatState with _$AayaatState {
  const factory AayaatState.inProgress() = AayaatStateInProgress;

  const factory AayaatState.failure(AppError error) = AayaatStateFailure;

  const factory AayaatState.success(
    Surah surah,
    List<Aayah> aayaat,
    Set<AayahNumber> bookmarks,
    AyahPosition scrollToPosition,
    ScrollPositionMax scrollProgressMax,
    bool scrollToNewPosition,
    bool inProgerss,
  ) = AayaatStateSuccess;
}
