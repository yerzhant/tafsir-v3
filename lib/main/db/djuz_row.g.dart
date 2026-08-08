// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'djuz_row.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_DjuzRow _$DjuzRowFromJson(Map<String, dynamic> json) => _DjuzRow(
  json['number'] as DjuzNumber,
  $enumDecode(_$DjuzPlaceEnumMap, json['place']),
  json['from_suran'] as SurahNumber,
  json['from_aayah'] as AayahNumber,
  json['to_surah'] as SurahNumber,
  json['to_aayah'] as AayahNumber,
);

Map<String, dynamic> _$DjuzRowToJson(_DjuzRow instance) => <String, dynamic>{
  'number': instance.number,
  'place': _$DjuzPlaceEnumMap[instance.place]!,
  'from_suran': instance.fromSuran,
  'from_aayah': instance.fromAayah,
  'to_surah': instance.toSurah,
  'to_aayah': instance.toAayah,
};

const _$DjuzPlaceEnumMap = {
  DjuzPlace.makkah: 'makkah',
  DjuzPlace.madinah: 'madinah',
  DjuzPlace.makkahAndMadinah: 'makkahAndMadinah',
};
