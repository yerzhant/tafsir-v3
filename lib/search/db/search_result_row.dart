import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tafsir/aayaat/domain/aayah.dart';
import 'package:tafsir/main/domain/surah.dart';
import 'package:tafsir/search/domain/search_content.dart';

part 'search_result_row.freezed.dart';
part 'search_result_row.g.dart';

@freezed
abstract class SearchResultRow with _$SearchResultRow {
  @JsonSerializable(fieldRename: .snake)
  const factory SearchResultRow(
    SurahName surahName,
    SurahNumber surahNumber,
    AayahNumber aayahNumber,
    AayahContent content,
  ) = _SearchResultRow;

  factory SearchResultRow.fromJson(Map<String, dynamic> json) =>
      _$SearchResultRowFromJson(json);

  const SearchResultRow._();

  SearchContent toDomain() => .new(
    surahName,
    surahNumber,
    aayahNumber,
    content,
  );
}
