import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'scroll_position_cubit.freezed.dart';
part 'scroll_position_state.dart';

extension type const ScrollPositionProgress(double value) implements double {}

class ScrollPositionCubit extends Cubit<ScrollPositionState> {
  ScrollPositionCubit() : super(const .current(.new(0)));

  void update(ScrollPositionProgress progress) => emit(.current(progress));
}
