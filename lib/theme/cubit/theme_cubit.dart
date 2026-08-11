import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:fpdart/fpdart.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tafsir/common/domain/error.dart';
import 'package:tafsir/common/ui/app_theme.dart';
import 'package:tafsir/theme/db/theme_db.dart';
import 'package:wakelock_plus/wakelock_plus.dart';

part 'theme_state.dart';
part 'theme_cubit.freezed.dart';

class ThemeCubit extends Cubit<ThemeState> {
  ThemeCubit(this._db) : super(const .current(false, false, .light, null));

  final ThemeDb _db;

  Future<void> init() => TaskEither<AppError, void>.Do(
    ($) async {
      final theme = await $(_db.getTheme());
      final sameAsInSystem = await $(_db.sameAsInSystem());
      final doNotSwitchOffScreen = await $(_db.doNotSwitchOffScreen());

      emit(.current(sameAsInSystem, doNotSwitchOffScreen, theme, null));

      _setSystemUI(theme);
      await _toggleWakelock(doNotSwitchOffScreen);
    },
  ).mapLeft((l) => emit(state.copyWith(error: l))).run();

  Future<void> setSameAsInSystem(bool value) => TaskEither<AppError, void>.Do(
    ($) async {
      emit(state.copyWith(sameAsInSystem: value));

      await $(_db.setSameAsInSystem(value));
    },
  ).mapLeft((l) => emit(state.copyWith(error: l))).run();

  Future<void> setDoNotSwitchOffScreen(bool value) =>
      TaskEither<AppError, void>.Do(
        ($) async {
          await _toggleWakelock(value);

          emit(state.copyWith(doNotSwitchOffScreen: value));

          await $(_db.setDoNotSwitchOffScreen(value));
        },
      ).mapLeft((l) => emit(state.copyWith(error: l))).run();

  Future<void> _toggleWakelock(bool value) =>
      WakelockPlus.toggle(enable: value);

  Future<void> setTheme(AppTheme theme) => TaskEither<AppError, void>.Do(
    ($) async {
      _setSystemUI(theme);

      emit(state.copyWith(theme: theme));

      await $(_db.setTheme(theme));
    },
  ).mapLeft((l) => emit(state.copyWith(error: l))).run();

  void _setSystemUI(AppTheme theme) {
    SystemChrome.setSystemUIOverlayStyle(
      .new(
        systemNavigationBarContrastEnforced: false,
        systemNavigationBarColor: Colors.transparent,
        systemNavigationBarIconBrightness: theme.brightness == .dark
            ? .light
            : .dark,
      ),
    );
  }
}
