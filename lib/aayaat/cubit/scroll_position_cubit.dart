import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tafsir/aayaat/domain/aayah.dart';
import 'package:tafsir/main/domain/surah.dart';

part 'scroll_position_cubit.freezed.dart';
part 'scroll_position_state.dart';

extension type const ScrollPositionProgress(double value) implements double {}

class ScrollPositionCubit extends Cubit<ScrollPositionState> {
  ScrollPositionCubit(this._max, AayahNumber aayahNumber)
    : super(.current(const .new(0), aayahNumber));

  final AayahQuantity _max;

  void update(AayahNumber minVisible, AayahNumber maxVisible) {
    emit(.current(.new(maxVisible / _max), minVisible));
  }
}
