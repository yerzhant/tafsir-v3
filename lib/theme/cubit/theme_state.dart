part of 'theme_cubit.dart';

@freezed
abstract class ThemeState with _$ThemeState {
  const factory ThemeState.current(
    bool sameAsInSystem,
    bool doNotSwitchOffScreen,
    AppTheme theme,
  ) = _Current;
}
