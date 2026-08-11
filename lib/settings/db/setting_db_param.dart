import 'package:freezed_annotation/freezed_annotation.dart';

part 'setting_db_param.freezed.dart';
part 'setting_db_param.g.dart';

@freezed
abstract class SettingDbParam with _$SettingDbParam {
  const factory SettingDbParam(
    SettingDbParamKey key,
    String value,
  ) = _SettingDbParam;

  factory SettingDbParam.fromJson(Map<String, dynamic> json) =>
      _$SettingDbParamFromJson(json);
}

enum SettingDbParamKey {
  showAyah,
  showTafsir,
  showTranslation,
  showFootnotes,

  ayahFontSize,
  tafsirFontSize,
  translationFontSize,

  ayahFontType,
}
