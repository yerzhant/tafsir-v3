import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tafsir/main/domain/muqaddim.dart';

part 'muqaddim_row.freezed.dart';
part 'muqaddim_row.g.dart';

@freezed
abstract class MuqaddimRow with _$MuqaddimRow {
  const factory MuqaddimRow(
    MuqaddimType type,
    MuqaddimContent content,
  ) = _MuqaddimRow;

  factory MuqaddimRow.fromJson(Map<String, dynamic> json) =>
      _$MuqaddimRowFromJson(json);
}
