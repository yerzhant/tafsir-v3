import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tafsir/main/domain/muqaddimah.dart';

part 'muqaddimah_row.freezed.dart';
part 'muqaddimah_row.g.dart';

@freezed
abstract class MuqaddimahRow with _$MuqaddimahRow {
  const factory MuqaddimahRow(
    MuqaddimahWeight weight,
    MuqaddimahType type,
    MuqaddimahTitle title,
    MuqaddimahContent content,
  ) = _MuqaddimahRow;

  factory MuqaddimahRow.fromJson(Map<String, dynamic> json) =>
      _$MuqaddimahRowFromJson(json);

  factory MuqaddimahRow.fromDomain(Muqaddimah muqaddimah) => .new(
    muqaddimah.weight,
    muqaddimah.type,
    muqaddimah.title,
    muqaddimah.content,
  );

  const MuqaddimahRow._();

  Muqaddimah toDomain() => .new(weight, type, title, content);
}
