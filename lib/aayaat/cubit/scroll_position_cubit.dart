import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tafsir/aayaat/domain/aayah.dart';

part 'scroll_position_cubit.freezed.dart';
part 'scroll_position_state.dart';

class ScrollPositionCubit extends Cubit<ScrollPositionState> {
  ScrollPositionCubit(AayahNumber number) : super(.initial(number));

  void updateAayahNumber(AayahNumber number) {
    if (state.number != number) {
      emit(state.copyWith(number: number));
    }
  }
}
