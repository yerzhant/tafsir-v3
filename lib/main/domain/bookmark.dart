import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tafsir/common/domain/aayah.dart';
import 'package:tafsir/main/domain/surah.dart';

part 'bookmark.freezed.dart';

@freezed
abstract class Bookmark with _$Bookmark {
  const factory Bookmark(
    SurahNumber surahNumber,
    SurahName surahName,
    AayahNumber aayahNumber,
  ) = _Bookmark;
}
