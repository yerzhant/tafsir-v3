import 'package:freezed_annotation/freezed_annotation.dart';

part 'theme_db_param.freezed.dart';
part 'theme_db_param.g.dart';

enum ThemeDbParamKey {
  sameAsInSystem,
  doNotSwitchOffScreen,
  theme,
}

@freezed
abstract class ThemeDbParam with _$ThemeDbParam {
  const factory ThemeDbParam(
    ThemeDbParamKey key,
    String value,
  ) = _ThemeDbParam;

  factory ThemeDbParam.fromJson(Map<String, dynamic> json) =>
      _$ThemeDbParamFromJson(json);
}
