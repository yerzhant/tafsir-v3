part of 'aayaat_cubit.dart';

@freezed
sealed class AayaatState with _$AayaatState {
  const factory AayaatState.inProgress() = AayaatStateInProgress;

  const factory AayaatState.failure(AppError error) = AayaatStateFailure;

  const factory AayaatState.success({
    required Surah surah,
    required List<Aayah> aayaat,
    required Set<AayahNumber> bookmarks,

    AayahNumber? goToAayah,
  }) = AayaatStateSuccess;
}
