// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'djuz_row.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_DjuzRow _$DjuzRowFromJson(Map<String, dynamic> json) => _DjuzRow(
  json['number'] as DjuzNumber,
  $enumDecode(_$DjuzPlaceEnumMap, json['place']),
  json['from'] as SurahName,
  json['to'] as SurahName,
);

Map<String, dynamic> _$DjuzRowToJson(_DjuzRow instance) => <String, dynamic>{
  'number': instance.number,
  'place': _$DjuzPlaceEnumMap[instance.place]!,
  'from': instance.from,
  'to': instance.to,
};

const _$DjuzPlaceEnumMap = {
  DjuzPlace.mekkah: 'mekkah',
  DjuzPlace.madinah: 'madinah',
};
