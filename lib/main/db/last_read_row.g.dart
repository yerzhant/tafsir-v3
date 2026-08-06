// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'last_read_row.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_LastReadRow _$LastReadRowFromJson(Map<String, dynamic> json) => _LastReadRow(
  json['surah_name'] as SurahName,
  json['surah_number'] as SurahNumber,
  json['aayah_number'] as AayahNumber,
);

Map<String, dynamic> _$LastReadRowToJson(_LastReadRow instance) =>
    <String, dynamic>{
      'surah_name': instance.surahName,
      'surah_number': instance.surahNumber,
      'aayah_number': instance.aayahNumber,
    };
