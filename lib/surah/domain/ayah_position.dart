import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tafsir/common/domain/aayah.dart';

part 'ayah_position.freezed.dart';

@freezed
abstract class AyahPosition with _$AyahPosition {
  const factory AyahPosition(
    AayahNumber number,
    double alignment,
  ) = _AyahPosition;
}
