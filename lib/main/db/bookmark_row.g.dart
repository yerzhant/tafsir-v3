// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'bookmark_row.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_BookmarkRow _$BookmarkRowFromJson(Map<String, dynamic> json) => _BookmarkRow(
  json['surah_number'] as SurahNumber,
  json['aayah_number'] as AayahNumber,
);

Map<String, dynamic> _$BookmarkRowToJson(_BookmarkRow instance) =>
    <String, dynamic>{
      'surah_number': instance.surahNumber,
      'aayah_number': instance.aayahNumber,
    };
