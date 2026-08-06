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

  factory SurahRow.fromDomain(Surah surah) => .new(
    surah.number,
    surah.name,
    surah.info,
    surah.djuz,
    surah.place,
    surah.translation,
    surah.quantity,
  );

  const SurahRow._();

  Surah toDomain() => .new(
    number,
    name,
    info,
    djuz,
    place,
    translation,
    quantity,
  );
}
