part of 'settings_cubit.dart';

@freezed
abstract class SettingsState with _$SettingsState {
  const factory SettingsState.current(
    bool showAyah,
    bool showTafsir,
    bool showTranslation,
    bool showFootnotes,

    double ayahFontSize,
    double tafsirFontSize,
    double tranlationFontSize,

    AyahFontType ayayFonType,
  ) = _Current;
}
