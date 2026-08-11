import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tafsir/common/ui/app_theme.dart';
import 'package:wakelock_plus/wakelock_plus.dart';

part 'theme_state.dart';
part 'theme_cubit.freezed.dart';

class ThemeCubit extends Cubit<ThemeState> {
  ThemeCubit() : super(const .current(false, false, .light));

  void setSameAsInSystem(bool value) => emit(
    state.copyWith(sameAsInSystem: value),
  );

  void setDoNotSwitchOffScreen(bool value) async {
    await WakelockPlus.toggle(enable: value);
    emit(state.copyWith(doNotSwitchOffScreen: value));
  }

  void setTheme(AppTheme theme) {
    SystemChrome.setSystemUIOverlayStyle(
      .new(
        systemNavigationBarContrastEnforced: false,
        systemNavigationBarColor: Colors.transparent,
        systemNavigationBarIconBrightness: switch (theme) {
          .light || .brownLight => .dark,
          .dark || .brownDark => .light,
        },
      ),
    );

    emit(state.copyWith(theme: theme));
  }
}
