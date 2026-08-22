import 'package:bloc/bloc.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:fpdart/fpdart.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tafsir/common/domain/error.dart';
import 'package:tafsir/common/ui/app_theme.dart';
import 'package:tafsir/theme/db/theme_db.dart';

part 'theme_cubit.freezed.dart';
part 'theme_state.dart';

class ThemeCubit extends Cubit<ThemeState> {
  ThemeCubit(this._db)
    : super(
        const .current(
          doNotSwitchOffScreen: false,
          sameAsInSystem: false,
          savedTheme: .light,
          theme: .light,
          error: null,
        ),
      );

  final ThemeDb _db;

  Future<void> init() => TaskEither<AppError, void>.Do(
    ($) async {
      final sameAsInSystem = await $(_db.sameAsInSystem());
      final doNotSwitchOffScreen = await $(_db.doNotSwitchOffScreen());

      emit(
        state.copyWith(
          doNotSwitchOffScreen: doNotSwitchOffScreen,
          sameAsInSystem: sameAsInSystem,
          error: null,
        ),
      );

      PlatformDispatcher.instance.onPlatformBrightnessChanged = _selectTheme;

      _selectTheme();
    },
  ).mapLeft((l) => emit(state.copyWith(error: l))).run();

  Future<void> _selectTheme() => TaskEither<AppError, void>.Do(
    ($) async {
      final savedTheme = await $(_db.getTheme());

      if (!await $(_db.sameAsInSystem())) {
        emit(state.copyWith(theme: savedTheme, savedTheme: savedTheme));
        await $(_setSystemUI(savedTheme));
        return;
      }

      final brightness = PlatformDispatcher.instance.platformBrightness;

      late final AppTheme theme;

      if (savedTheme == .light || savedTheme == .dark) {
        theme = brightness == .light ? .light : .dark;
      } else {
        theme = brightness == .light ? .brownLight : .brownDark;
      }

      emit(state.copyWith(theme: theme, savedTheme: savedTheme));
      await $(_setSystemUI(theme));
    },
  ).mapLeft((l) => emit(state.copyWith(error: l))).run();

  TaskEither<AppError, void> _setSystemUI(AppTheme theme) =>
      .tryCatch(() async {
        await Future.delayed(const .new(milliseconds: 100));

        SystemChrome.setSystemUIOverlayStyle(
          .new(
            systemNavigationBarContrastEnforced: false,
            systemNavigationBarColor: Colors.transparent,
            systemNavigationBarIconBrightness: theme.brightness == .dark
                ? .light
                : .dark,
          ),
        );
      }, ExceptionError.new);

  Future<void> setSameAsInSystem(bool value) => TaskEither<AppError, void>.Do(
    ($) async {
      emit(state.copyWith(sameAsInSystem: value));
      await $(_db.setSameAsInSystem(value));
      _selectTheme();
    },
  ).mapLeft((l) => emit(state.copyWith(error: l))).run();

  Future<void> setDoNotSwitchOffScreen(bool value) =>
      TaskEither<AppError, void>.Do(
        ($) async {
          emit(state.copyWith(doNotSwitchOffScreen: value));
          await $(_db.setDoNotSwitchOffScreen(value));
        },
      ).mapLeft((l) => emit(state.copyWith(error: l))).run();

  Future<void> setTheme(AppTheme theme) => TaskEither<AppError, void>.Do(
    ($) async {
      await $(_db.setTheme(theme));
      _selectTheme();
    },
  ).mapLeft((l) => emit(state.copyWith(error: l))).run();
}
