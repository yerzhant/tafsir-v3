// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'last_read_row.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_LastReadRow _$LastReadRowFromJson(Map<String, dynamic> json) => _LastReadRow(
  (json['timestamp'] as num).toInt(),
  json['surah_number'] as SurahNumber,
  json['aayah_number'] as AayahNumber,
  (json['alignment'] as num).toDouble(),
);

Map<String, dynamic> _$LastReadRowToJson(_LastReadRow instance) =>
    <String, dynamic>{
      'timestamp': instance.timestamp,
      'surah_number': instance.surahNumber,
      'aayah_number': instance.aayahNumber,
      'alignment': instance.alignment,
    };
