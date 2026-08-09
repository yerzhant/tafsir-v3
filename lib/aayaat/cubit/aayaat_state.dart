part of 'aayaat_cubit.dart';

@freezed
sealed class AayaatState with _$AayaatState {
  const factory AayaatState.success(
    AyahPosition position,
    List<Aayah> aayaat,
    Set<AayahNumber> bookmarks,
  ) = AayaatStateSuccess;

  const factory AayaatState.failure(AppError error) = AayaatStateFailure;
}
