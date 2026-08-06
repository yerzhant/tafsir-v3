part of 'surah_cubit.dart';

@freezed
abstract class SurahState with _$SurahState {
  const factory SurahState.read(AyahPosition position) = _Read;
}
