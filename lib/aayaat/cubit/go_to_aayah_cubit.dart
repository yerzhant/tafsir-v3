import 'package:bloc/bloc.dart';
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

  final _debouncer = Debouncer(const .new(milliseconds: 500));

  void onSurahEdited(String value) {}

  void onAayahEdited(String value) => _debouncer.run(() {
    final parsed = int.tryParse(value);

    if (parsed == null) return;

    final quantity = _suwar[state.surahNumber - 1].quantity;

    final aayah = switch (parsed) {
      < 1 => 1,
      _ when parsed > quantity => quantity,
      _ => parsed,
    };

    emit(state.copyWith(aayahNumber: .new(aayah)));
  });

  @override
  Future<void> close() {
    _debouncer.dispose();
    return super.close();
  }
}
