import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tafsir/aayaat/domain/aayah.dart';
import 'package:tafsir/main/domain/surah.dart';

part 'scroll_position_cubit.freezed.dart';
part 'scroll_position_state.dart';

extension type const ScrollPositionProgress(double value) implements double {}

class ScrollPositionCubit extends Cubit<ScrollPositionState> {
  ScrollPositionCubit(this._max) : super(const .current(.new(0)));

  final AayahQuantity _max;

  void update(AayahNumber current) {
    emit(.current(.new(current / _max)));
  }
}
