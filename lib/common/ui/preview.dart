import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fpdart/fpdart.dart';
import 'package:tafsir/common/domain/error.dart';
import 'package:tafsir/common/ui/app_theme.dart';
import 'package:tafsir/theme/cubit/theme_cubit.dart';
import 'package:tafsir/theme/db/theme_db.dart';

Widget wrapper(Widget child) => Card(
  color: bgPrimaryLight,
  child: Padding(padding: const .all(20), child: child),
);

Widget sizedWrapper(
  Widget child, {
  double width = 300,
  double hight = 150,
  double padding = 20,
  Color color = bgPrimaryLight,
}) => SizedBox(
  width: width,
  height: hight,
  child: Card(
    color: color,
    child: Padding(
      padding: .all(padding),
      child: child,
    ),
  ),
);

Widget themeWrapper(Widget child) => BlocProvider(
  create: (context) => ThemeCubit(_ThemeDb()),
  child: Column(
    spacing: 10,
    children: [
      Builder(
        builder: (context) {
          return Row(
            mainAxisAlignment: .spaceBetween,
            children: [
              _Button(
                title: 'Light',
                onPressed: () => context.read<ThemeCubit>().setTheme(.light),
              ),
              _Button(
                title: 'BLight',
                onPressed: () => context.read<ThemeCubit>().setTheme(.brownLight),
              ),
              _Button(
                title: 'Dark',
                onPressed: () => context.read<ThemeCubit>().setTheme(.dark),
              ),
              _Button(
                title: 'BDark',
                onPressed: () => context.read<ThemeCubit>().setTheme(.brownDark),
              ),
            ],
          );
        },
      ),
      BlocBuilder<ThemeCubit, ThemeState>(
        builder: (context, state) {
          return Container(color: bgPrimary(state.theme), child: child);
        },
      ),
    ],
  ),
);

class _Button extends StatelessWidget {
  const _Button({required this.title, required this.onPressed});

  final String title;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return FilledButton(onPressed: onPressed, child: Text(title));
  }
}

class _ThemeDb implements ThemeDb {
  AppTheme _theme = .light;

  @override
  TaskEither<AppError, bool> doNotSwitchOffScreen() => .right(false);

  @override
  TaskEither<AppError, bool> sameAsInSystem() => .right(false);

  @override
  TaskEither<AppError, AppTheme> getTheme() => .right(_theme);

  @override
  TaskEither<AppError, void> setDoNotSwitchOffScreen(bool value) =>
      .right(null);

  @override
  TaskEither<AppError, void> setSameAsInSystem(bool value) => .right(null);

  @override
  TaskEither<AppError, void> setTheme(AppTheme theme) {
    _theme = theme;
    return .right(null);
  }
}
