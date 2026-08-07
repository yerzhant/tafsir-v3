// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'aayah_row.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_AayahRow _$AayahRowFromJson(Map<String, dynamic> json) => _AayahRow(
  json['surah_number'] as SurahNumber,
  json['aayah_number'] as AayahNumber,
  json['arabic'] as AayahArabic,
  json['tafsir'] as AayahTafsir,
  json['translation'] as AayahTranslation,
);

Map<String, dynamic> _$AayahRowToJson(_AayahRow instance) => <String, dynamic>{
  'surah_number': instance.surahNumber,
  'aayah_number': instance.aayahNumber,
  'arabic': instance.arabic,
  'tafsir': instance.tafsir,
  'translation': instance.translation,
};
