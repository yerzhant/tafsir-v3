import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tafsir/main/domain/djuz.dart';
import 'package:tafsir/main/domain/surah.dart';

part 'djuz_row.freezed.dart';
part 'djuz_row.g.dart';

@freezed
abstract class DjuzRow with _$DjuzRow {
  const factory DjuzRow(
    DjuzNumber number,
    DjuzPlace place,
    SurahName from,
    SurahName to,
  ) = _DjuzRow;

  factory DjuzRow.fromJson(Map<String, dynamic> json) =>
      _$DjuzRowFromJson(json);
}
