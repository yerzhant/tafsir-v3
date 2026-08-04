import 'package:freezed_annotation/freezed_annotation.dart';

part 'ayah_position.freezed.dart';

@freezed
abstract class AyahPosition with _$AyahPosition {
  const factory AyahPosition(
    int number,
    double alignment,
  ) = _AyahPosition;
}
