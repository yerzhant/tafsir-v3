import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tafsir/common/domain/aayah.dart';
import 'package:tafsir/main/domain/surah.dart';

part 'last_read_row.freezed.dart';
part 'last_read_row.g.dart';

@freezed
abstract class LastReadRow with _$LastReadRow {
  @JsonSerializable(fieldRename: .snake)
  const factory LastReadRow(
    SurahName surahName,
    SurahNumber surahNumber,
    AayahNumber aayahNumber,
  ) = _LastReadRow;

  factory LastReadRow.fromJson(Map<String, dynamic> json) =>
      _$LastReadRowFromJson(json);
}
