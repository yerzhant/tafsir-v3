// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'search_result_row.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_SearchResultRow _$SearchResultRowFromJson(Map<String, dynamic> json) =>
    _SearchResultRow(
      json['surah_name'] as SurahName,
      json['surah_number'] as SurahNumber,
      json['aayah_number'] as AayahNumber,
      json['content'] as AayahContent,
    );

Map<String, dynamic> _$SearchResultRowToJson(_SearchResultRow instance) =>
    <String, dynamic>{
      'surah_name': instance.surahName,
      'surah_number': instance.surahNumber,
      'aayah_number': instance.aayahNumber,
      'content': instance.content,
    };
