import 'package:freezed_annotation/freezed_annotation.dart';

part 'muqaddim.freezed.dart';

enum MuqaddimType { book, azanRu, basmalah }

extension type const MuqaddimContent(String value) implements String {}

@freezed
abstract class Muqaddim with _$Muqaddim {
  const factory Muqaddim(
    MuqaddimType type,
    MuqaddimContent content,
  ) = _Muqaddim;
}
