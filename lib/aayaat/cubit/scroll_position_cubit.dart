import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'scroll_position_cubit.freezed.dart';
part 'scroll_position_state.dart';

extension type const ScrollPositionMax(double value) implements double {}
extension type const ScrollPositionCurrent(double value) implements double {}
extension type const ScrollPositionProgress(double value) implements double {}

class ScrollPositionCubit extends Cubit<ScrollPositionState> {
  ScrollPositionCubit() : super(const .current(.new(0)));

  late ScrollPositionMax _max;

  void updateMax(ScrollPositionMax max) {
    emit(const .current(.new(0)));
    _max = max;
  }

  void update(ScrollPositionCurrent current) {
    emit(.current(.new(current / _max)));
  }
}
