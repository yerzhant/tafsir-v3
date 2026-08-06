// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'init_db_param.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_InitDbParam _$InitDbParamFromJson(Map<String, dynamic> json) => _InitDbParam(
  $enumDecode(_$InitDbParamKeyEnumMap, json['key']),
  json['value'] as String,
);

Map<String, dynamic> _$InitDbParamToJson(_InitDbParam instance) =>
    <String, dynamic>{
      'key': _$InitDbParamKeyEnumMap[instance.key]!,
      'value': instance.value,
    };

const _$InitDbParamKeyEnumMap = {InitDbParamKey.initialized: 'initialized'};
