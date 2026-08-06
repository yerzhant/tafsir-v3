import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tafsir/main/domain/surah.dart';

part 'surah_row.freezed.dart';
part 'surah_row.g.dart';

@freezed
abstract class SurahRow with _$SurahRow {
  const factory SurahRow(
    SurahNumber number,
    SurahName name,
    SurahInfo info,
    SurahDjuz djuz,
    SurahPlace place,
    SurahTranslation translation,

    AayahQuantity quantity,
  ) = _SurahRow;

  factory SurahRow.fromJson(Map<String, dynamic> json) =>
      _$SurahRowFromJson(json);
}
