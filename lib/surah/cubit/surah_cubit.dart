import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tafsir/surah/domain/ayah_position.dart';

part 'surah_state.dart';
part 'surah_cubit.freezed.dart';

class SurahCubit extends Cubit<SurahState> {
  SurahCubit(AyahPosition position) : super(.read(position));

  void scrollTo(AyahPosition position) => emit(.read(position));
}
