// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'search_content_row.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_SearchContentRow _$SearchContentRowFromJson(Map<String, dynamic> json) =>
    _SearchContentRow(
      json['surah_number'] as SurahNumber,
      json['aayah_number'] as AayahNumber,
      json['content'] as AayahContent,
    );

Map<String, dynamic> _$SearchContentRowToJson(_SearchContentRow instance) =>
    <String, dynamic>{
      'surah_number': instance.surahNumber,
      'aayah_number': instance.aayahNumber,
      'content': instance.content,
    };
