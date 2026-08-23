part of 'go_to_aayah_cubit.dart';

@freezed
abstract class GoToAayahState with _$GoToAayahState {
  const factory GoToAayahState.initial(
    SurahNumber surahNumber,
    AayahNumber aayahNumber,
  ) = _Initial;
}
