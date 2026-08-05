import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tafsir/settings/domain/ayah_font_type.dart';

part 'settings_state.dart';
part 'settings_cubit.freezed.dart';

class SettingsCubit extends Cubit<SettingsState> {
  SettingsCubit()
    : super(
        const .current(
          true,
          true,
          true,
          true,
          12,
          12,
          .meQurah,
        ),
      );

  void setShowAyah(bool value) => emit(
    state.copyWith(showAyah: value),
  );

  void setShowTafsir(bool value) => emit(
    state.copyWith(showTafsir: value),
  );

  void setShowTranslation(bool value) => emit(
    state.copyWith(showTranslation: value),
  );

  void setShowFootnotes(bool value) => emit(
    state.copyWith(showFootnotes: value),
  );

  void setAyahFontSize(double value) => emit(
    state.copyWith(ayahFontSize: value),
  );

  void setTranslationFontSize(double value) => emit(
    state.copyWith(tranlationFontSize: value),
  );

  void setAyahFontType(AyahFontType type) => emit(
    state.copyWith(ayayFonType: type),
  );
}
