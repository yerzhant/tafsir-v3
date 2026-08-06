import 'package:freezed_annotation/freezed_annotation.dart';

part 'init_db_param.freezed.dart';
part 'init_db_param.g.dart';

enum InitDbParamKey { initialized }

@freezed
abstract class InitDbParam with _$InitDbParam {
  const factory InitDbParam(
    InitDbParamKey key,
    String value,
  ) = _InitDbParam;

  factory InitDbParam.fromJson(Map<String, dynamic> json) =>
      _$InitDbParamFromJson(json);
}
