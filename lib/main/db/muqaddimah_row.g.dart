// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'muqaddimah_row.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_MuqaddimahRow _$MuqaddimahRowFromJson(Map<String, dynamic> json) =>
    _MuqaddimahRow(
      json['weight'] as MuqaddimahWeight,
      $enumDecode(_$MuqaddimahTypeEnumMap, json['type']),
      json['title'] as MuqaddimahTitle,
      json['content'] as MuqaddimahContent,
    );

Map<String, dynamic> _$MuqaddimahRowToJson(_MuqaddimahRow instance) =>
    <String, dynamic>{
      'weight': instance.weight,
      'type': _$MuqaddimahTypeEnumMap[instance.type]!,
      'title': instance.title,
      'content': instance.content,
    };

const _$MuqaddimahTypeEnumMap = {
  MuqaddimahType.book: 'book',
  MuqaddimahType.azanRu: 'azanRu',
  MuqaddimahType.basmalah: 'basmalah',
};
