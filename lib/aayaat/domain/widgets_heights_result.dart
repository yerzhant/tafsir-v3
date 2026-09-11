import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tafsir/aayaat/cubit/scroll_position_cubit.dart';

part 'widgets_heights_result.freezed.dart';

@freezed
abstract class WidgetsHeightsResult with _$WidgetsHeightsResult {
  const factory WidgetsHeightsResult(
    ScrollPositionMax maxOffset,
    List<double> offsets,
  ) = _WidgetsHeightsResult;
}
