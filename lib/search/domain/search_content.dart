import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tafsir/aayaat/domain/aayah.dart';
import 'package:tafsir/main/domain/surah.dart';

part 'search_content.freezed.dart';

extension type const SearchPhrase(String value) implements String {}
extension type const AayahContent(String value) implements String {}

@freezed
abstract class SearchContent with _$SearchContent {
  const factory SearchContent(
    SurahName surahName,
    SurahNumber surahNumber,
    AayahNumber aayahNumber,
    AayahContent content,
  ) = _SearchContent;
}
