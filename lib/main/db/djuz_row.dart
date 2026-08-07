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
    SurahNumber from,
    SurahNumber to,
  ) = _DjuzRow;

  factory DjuzRow.fromJson(Map<String, dynamic> json) =>
      _$DjuzRowFromJson(json);

  factory DjuzRow.fromDomain(Djuz djuz) => .new(
    djuz.number,
    djuz.place,
    djuz.fromNumber,
    djuz.toNumber,
  );

  const DjuzRow._();

  Djuz toDomain(SurahName fromName, SurahName toName) => .new(
    number,
    place,
    from,
    to,
    fromName,
    toName,
  );
}
