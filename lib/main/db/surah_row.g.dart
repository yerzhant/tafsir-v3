// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'surah_row.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_SurahRow _$SurahRowFromJson(Map<String, dynamic> json) => _SurahRow(
  json['number'] as SurahNumber,
  json['name'] as SurahName,
  json['info'] as SurahInfo,
  json['djuz'] as SurahDjuz,
  $enumDecode(_$SurahPlaceEnumMap, json['place']),
  json['translation'] as SurahTranslation,
  json['quantity'] as AayahQuantity,
);

Map<String, dynamic> _$SurahRowToJson(_SurahRow instance) => <String, dynamic>{
  'number': instance.number,
  'name': instance.name,
  'info': instance.info,
  'djuz': instance.djuz,
  'place': _$SurahPlaceEnumMap[instance.place]!,
  'translation': instance.translation,
  'quantity': instance.quantity,
};

const _$SurahPlaceEnumMap = {
  SurahPlace.mekkah: 'mekkah',
  SurahPlace.madinah: 'madinah',
};
