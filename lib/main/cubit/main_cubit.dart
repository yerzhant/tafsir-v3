import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tafsir/common/domain/error.dart';
import 'package:tafsir/main/domain/bookmark.dart';
import 'package:tafsir/main/domain/djuz.dart';
import 'package:tafsir/main/domain/surah.dart';

part 'main_state.dart';
part 'main_cubit.freezed.dart';

class MainCubit extends Cubit<MainState> {
  MainCubit() : super(const .success(.suwar, [], [], []));

  void suwar() => emit(
    (state as MainStateSuccess).copyWith(tab: .suwar),
  );

  void adjzaa() => emit(
    (state as MainStateSuccess).copyWith(tab: .adjzaa),
  );

  void bookmarks() => emit(
    (state as MainStateSuccess).copyWith(tab: .bookmarks),
  );
}
