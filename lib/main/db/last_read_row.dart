import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tafsir/aayaat/domain/aayah.dart';
import 'package:tafsir/main/domain/last_read.dart';
import 'package:tafsir/main/domain/surah.dart';

part 'last_read_row.freezed.dart';
part 'last_read_row.g.dart';

@freezed
abstract class LastReadRow with _$LastReadRow {
  @JsonSerializable(fieldRename: .snake)
  const factory LastReadRow(
    int timestamp,
    SurahNumber surahNumber,
    AayahNumber aayahNumber,
    double alignment,
  ) = _LastReadRow;

  factory LastReadRow.fromJson(Map<String, dynamic> json) =>
      _$LastReadRowFromJson(json);

  factory LastReadRow.fromDomain(LastRead lastRead) => .new(
    lastRead.timestamp.microsecondsSinceEpoch,
    lastRead.surahNumber,
    lastRead.ayahPosition.number,
    lastRead.ayahPosition.alignment,
  );

  const LastReadRow._();

  LastRead toDomain(Surah surah) => .new(
    .fromMicrosecondsSinceEpoch(timestamp),
    surah.name,
    surahNumber,
    .new(aayahNumber, alignment),
  );
}
