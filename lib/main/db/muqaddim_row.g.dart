// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'muqaddim_row.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_MuqaddimRow _$MuqaddimRowFromJson(Map<String, dynamic> json) => _MuqaddimRow(
  $enumDecode(_$MuqaddimTypeEnumMap, json['type']),
  json['content'] as MuqaddimContent,
);

Map<String, dynamic> _$MuqaddimRowToJson(_MuqaddimRow instance) =>
    <String, dynamic>{
      'type': _$MuqaddimTypeEnumMap[instance.type]!,
      'content': instance.content,
    };

const _$MuqaddimTypeEnumMap = {
  MuqaddimType.book: 'book',
  MuqaddimType.azanRu: 'azanRu',
  MuqaddimType.basmalah: 'basmalah',
};
