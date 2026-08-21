part of 'player_cubit.dart';

@freezed
sealed class PlayerState with _$PlayerState {
  const factory PlayerState.inactive() = PlayerStateInactive;

  const factory PlayerState.failure(AppError error) = PlayerStateFailure;

  const factory PlayerState.playing(
    bool isPaused,
    bool isLooping,
    PlayerPosition position,
  ) = PlayerStatePlaying;
}
