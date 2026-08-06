// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'setting_db_param.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_SettingDbParam _$SettingDbParamFromJson(Map<String, dynamic> json) =>
    _SettingDbParam(
      $enumDecode(_$SettingDbParamKeyEnumMap, json['key']),
      json['value'] as String,
    );

Map<String, dynamic> _$SettingDbParamToJson(_SettingDbParam instance) =>
    <String, dynamic>{
      'key': _$SettingDbParamKeyEnumMap[instance.key]!,
      'value': instance.value,
    };

const _$SettingDbParamKeyEnumMap = {
  SettingDbParamKey.showAyah: 'showAyah',
  SettingDbParamKey.showTafsir: 'showTafsir',
  SettingDbParamKey.showTranslation: 'showTranslation',
  SettingDbParamKey.showFootnotes: 'showFootnotes',
  SettingDbParamKey.ayahFontSize: 'ayahFontSize',
  SettingDbParamKey.tranlationFontSize: 'tranlationFontSize',
  SettingDbParamKey.ayayFonType: 'ayayFonType',
};
