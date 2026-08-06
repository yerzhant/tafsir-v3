part of 'init_cubit.dart';

@freezed
sealed class InitState with _$InitState {
  const factory InitState.initializing(double progress) = InitStateInitializing;
  const factory InitState.failure(AppError error) = InitStateFailure;
  const factory InitState.initialized() = InitStateInitialized;
}
