import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tafsir/aayaat/domain/aayah.dart';
import 'package:tafsir/main/domain/surah.dart';

part 'aayah_row.freezed.dart';
part 'aayah_row.g.dart';

@freezed
abstract class AayahRow with _$AayahRow {
  @JsonSerializable(fieldRename: .snake)
  const factory AayahRow(
    SurahNumber surahNumber,
    AayahNumber aayahNumber,
    AayahArabic arabic,
    AayahTafsir tafsir,
    AayahTranslation translation,
  ) = _AayahRow;

  factory AayahRow.fromJson(Map<String, dynamic> json) =>
      _$AayahRowFromJson(json);

  factory AayahRow.fromDomain(Surah surah, Aayah aayah) => .new(
    surah.number,
    aayah.number,
    aayah.arabic,
    aayah.tafsir,
    aayah.translation,
  );

  const AayahRow._();

  Aayah toDomain() => .new(aayahNumber, arabic, tafsir, translation);
}
