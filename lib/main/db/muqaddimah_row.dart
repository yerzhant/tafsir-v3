import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tafsir/main/domain/muqaddimah.dart';

part 'muqaddimah_row.freezed.dart';
part 'muqaddimah_row.g.dart';

@freezed
abstract class MuqaddimahRow with _$MuqaddimahRow {
  const factory MuqaddimahRow(
    MuqaddimahType type,
    MuqaddimahContent content,
  ) = _MuqaddimahRow;

  factory MuqaddimahRow.fromJson(Map<String, dynamic> json) =>
      _$MuqaddimahRowFromJson(json);

  factory MuqaddimahRow.fromDomain(Muqaddimah muqaddimah) =>
      .new(muqaddimah.type, muqaddimah.content);

  const MuqaddimahRow._();

  Muqaddimah toDomain() => .new(type, content);
}
