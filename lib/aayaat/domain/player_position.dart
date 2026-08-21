import 'package:freezed_annotation/freezed_annotation.dart';

part 'player_position.freezed.dart';

@freezed
abstract class PlayerPosition with _$PlayerPosition {
  const factory PlayerPosition(
    double position,
    String title,
  ) = _PlayerPosition;
}
