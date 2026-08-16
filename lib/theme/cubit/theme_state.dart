part of 'theme_cubit.dart';

@freezed
abstract class ThemeState with _$ThemeState {
  const factory ThemeState.current({
    required bool doNotSwitchOffScreen,
    required bool sameAsInSystem,
    required AppTheme savedTheme,
    required AppTheme theme,
    required AppError? error,
  }) = _Current;
}
