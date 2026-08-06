import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tafsir/common/domain/aayah.dart';
import 'package:tafsir/main/domain/bookmark.dart';
import 'package:tafsir/main/domain/surah.dart';

part 'bookmark_row.freezed.dart';
part 'bookmark_row.g.dart';

@freezed
abstract class BookmarkRow with _$BookmarkRow {
  @JsonSerializable(fieldRename: .snake)
  const factory BookmarkRow(
    SurahNumber surahNumber,
    AayahNumber aayahNumber,
  ) = _BookmarkRow;

  factory BookmarkRow.fromJson(Map<String, dynamic> json) =>
      _$BookmarkRowFromJson(json);

  factory BookmarkRow.fromDomain(Bookmark bookmark) =>
      .new(bookmark.surahNumber, bookmark.aayahNumber);
}
