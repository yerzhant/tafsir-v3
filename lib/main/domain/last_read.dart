import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tafsir/main/domain/surah.dart';
import 'package:tafsir/aayaat/domain/ayah_position.dart';

part 'last_read.freezed.dart';

@freezed
abstract class LastRead with _$LastRead {
  const factory LastRead(
    DateTime timestamp,
    SurahName surahName,
    SurahNumber surahNumber,
    AyahPosition ayahPosition,
  ) = _LastRead;
}
