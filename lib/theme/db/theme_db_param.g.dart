// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'theme_db_param.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ThemeDbParam _$ThemeDbParamFromJson(Map<String, dynamic> json) =>
    _ThemeDbParam(
      $enumDecode(_$ThemeDbParamKeyEnumMap, json['key']),
      json['value'] as String,
    );

Map<String, dynamic> _$ThemeDbParamToJson(_ThemeDbParam instance) =>
    <String, dynamic>{
      'key': _$ThemeDbParamKeyEnumMap[instance.key]!,
      'value': instance.value,
    };

const _$ThemeDbParamKeyEnumMap = {
  ThemeDbParamKey.sameAsInSystem: 'sameAsInSystem',
  ThemeDbParamKey.doNotSwitchOffScreen: 'doNotSwitchOffScreen',
  ThemeDbParamKey.theme: 'theme',
};
