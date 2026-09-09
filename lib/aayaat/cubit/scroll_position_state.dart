part of 'scroll_position_cubit.dart';

@freezed
abstract class ScrollPositionState with _$ScrollPositionState {
  const factory ScrollPositionState.current(ScrollPositionProgress progress) =
      _Current;
}
