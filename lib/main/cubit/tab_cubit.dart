import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'tab_state.dart';
part 'tab_cubit.freezed.dart';

class TabCubit extends Cubit<TabState> {
  TabCubit() : super(const .suwar());

  void suwar() => emit(const .suwar());
  void adjzaa() => emit(const .adjzaa());
  void bookmarks() => emit(const .bookmarks());
}
