import 'package:bloc/bloc.dart';
import 'package:collection/collection.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tafsir/aayaat/domain/aayah.dart';
import 'package:tafsir/common/domain/debouncer.dart';
import 'package:tafsir/main/domain/surah.dart';

part 'go_to_aayah_state.dart';
part 'go_to_aayah_cubit.freezed.dart';

class GoToAayahCubit extends Cubit<GoToAayahState> {
  GoToAayahCubit(
    this._suwar,
    SurahNumber surahNumber,
    AayahNumber aayahNumber,
  ) : super(.initial(surahNumber, aayahNumber));

  final List<Surah> _suwar;

  final _debounceSurah = Debouncer(const .new(milliseconds: 500));
  final _debounceAayah = Debouncer(const .new(milliseconds: 500));

  void onSurahEdited(String value) => _debounceSurah.run(() {
    if (value.trim() == '') return;

    final parsedInt = int.tryParse(value);

    if (parsedInt != null) {
      final surah = parsedInt.clamp(1, 114);
      emit(.initial(.new(surah), const .new(1)));
      return;
    }

    final surah = _suwar.firstWhereOrNull(
      (s) =>
          s.name.toLowerCase().contains(value.toLowerCase()) ||
          (s.translation?.toLowerCase().contains(value.toLowerCase()) ?? false),
    );

    if (surah == null) return;

    emit(.initial(surah.number, const .new(1)));
  });

  void onAayahEdited(String value) => _debounceAayah.run(() {
    final parsed = int.tryParse(value);

    if (parsed == null) return;

    final quantity = _suwar[state.surahNumber - 1].quantity;

    final aayah = parsed.clamp(1, quantity);

    emit(state.copyWith(aayahNumber: .new(aayah)));
  });

  void setSurah(SurahNumber number) => emit(.initial(number, const .new(1)));

  void setAayah(AayahNumber number) => emit(
    state.copyWith(aayahNumber: number),
  );

  @override
  Future<void> close() {
    _debounceAayah.dispose();
    _debounceSurah.dispose();
    return super.close();
  }
}
