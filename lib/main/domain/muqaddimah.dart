import 'package:freezed_annotation/freezed_annotation.dart';

part 'muqaddimah.freezed.dart';

enum MuqaddimahType {
  book(-2),
  azanRu(-1),
  basmalah(0),
  ;

  final int code;

  const MuqaddimahType(this.code);

  static MuqaddimahType parse(int code) =>
      values.firstWhere((t) => t.code == code);
}

extension type const MuqaddimahWeight(int value) implements int {}
extension type const MuqaddimahTitle(String value) implements String {}
extension type const MuqaddimahContent(String value) implements String {}

@freezed
abstract class Muqaddimah with _$Muqaddimah {
  const factory Muqaddimah(
    MuqaddimahWeight weight,
    MuqaddimahType type,
    MuqaddimahTitle title,
    MuqaddimahContent content,
  ) = _Muqaddimah;
}
