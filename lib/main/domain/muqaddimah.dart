import 'package:freezed_annotation/freezed_annotation.dart';

part 'muqaddimah.freezed.dart';

enum MuqaddimahType { book, azanRu, basmalah }

extension type const MuqaddimahContent(String value) implements String {}

@freezed
abstract class Muqaddimah with _$Muqaddimah {
  const factory Muqaddimah(
    MuqaddimahType type,
    MuqaddimahContent content,
  ) = _Muqaddimah;
}
