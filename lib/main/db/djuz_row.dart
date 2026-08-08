import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tafsir/aayaat/domain/aayah.dart';
import 'package:tafsir/main/domain/djuz.dart';
import 'package:tafsir/main/domain/surah.dart';

part 'djuz_row.freezed.dart';
part 'djuz_row.g.dart';

@freezed
abstract class DjuzRow with _$DjuzRow {
  @JsonSerializable(fieldRename: .snake)
  const factory DjuzRow(
    DjuzNumber number,
    DjuzPlace place,
    SurahNumber fromSuran,
    AayahNumber fromAayah,
    SurahNumber toSurah,
    AayahNumber toAayah,
  ) = _DjuzRow;

  factory DjuzRow.fromJson(Map<String, dynamic> json) =>
      _$DjuzRowFromJson(json);

  factory DjuzRow.fromDomain(Djuz djuz) => .new(
    djuz.number,
    djuz.place,
    djuz.fromSurahNumber,
    djuz.fromAayah,
    djuz.toSurahNumber,
    djuz.toAayah,
  );

  const DjuzRow._();

  Djuz toDomain(SurahName fromSuranName, SurahName toSuranName) => .new(
    number,
    place,
    fromSuran,
    toSurah,
    fromSuranName,
    toSuranName,
    fromAayah,
    toAayah,
  );
}
