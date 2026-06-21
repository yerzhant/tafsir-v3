import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tafsir/common/domain/aayah.dart';
import 'package:tafsir/main/domain/surah_item.dart';

part 'last_read.freezed.dart';

@freezed
abstract class LastRead with _$LastRead {
  const factory LastRead(
    SurahName surah,
    SurahNumber surahNumber,
    AayahNumber aayah,
  ) = _LastRead;
}
