// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'muqaddimah_row.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_MuqaddimahRow _$MuqaddimahRowFromJson(Map<String, dynamic> json) =>
    _MuqaddimahRow(
      $enumDecode(_$MuqaddimahTypeEnumMap, json['type']),
      json['content'] as MuqaddimahContent,
    );

Map<String, dynamic> _$MuqaddimahRowToJson(_MuqaddimahRow instance) =>
    <String, dynamic>{
      'type': _$MuqaddimahTypeEnumMap[instance.type]!,
      'content': instance.content,
    };

const _$MuqaddimahTypeEnumMap = {
  MuqaddimahType.book: 'book',
  MuqaddimahType.azanRu: 'azanRu',
  MuqaddimahType.basmalah: 'basmalah',
};
