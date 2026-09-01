import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tafsir/aayaat/domain/aayah.dart';
import 'package:tafsir/main/domain/surah.dart';
import 'package:tafsir/search/domain/search_content.dart';

part 'search_content_row.freezed.dart';
part 'search_content_row.g.dart';

@freezed
abstract class SearchContentRow with _$SearchContentRow {
  @JsonSerializable(fieldRename: .snake)
  const factory SearchContentRow(
    SurahNumber surahNumber,
    AayahNumber aayahNumber,
    AayahContent content,
  ) = _SearchContentRow;

  factory SearchContentRow.fromJson(Map<String, dynamic> json) =>
      _$SearchContentRowFromJson(json);
}
