import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:tafsir/common/ui/app_theme.dart';
import 'package:tafsir/common/ui/setting_panel.dart';
import 'package:tafsir/theme/cubit/theme_cubit.dart';

class ThemeSettings extends StatelessWidget {
  const ThemeSettings({super.key, required this.theme});

  final AppTheme theme;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const .symmetric(horizontal: 20, vertical: 18),
      child: BlocBuilder<ThemeCubit, ThemeState>(
        builder: (context, state) {
          return Column(
            crossAxisAlignment: .start,
            spacing: 12,
            children: [
              Column(
                crossAxisAlignment: .start,
                spacing: 8,
                children: [
                  Text(
                    'Настройки темы',
                    style: textHeadline.copyWith(
                      color: typographyPrimary(theme),
                    ),
                  ),
                  SettingPanel(
                    theme: theme,
                    child: Row(
                      children: [
                        Text(
                          'Как в системе',
                          style: textBodyReg.copyWith(
                            color: typographyPrimary(theme),
                          ),
                        ),
                        const Spacer(),
                        Switch.adaptive(
                          value: state.sameAsInSystem,
                          onChanged: context
                              .read<ThemeCubit>()
                              .setSameAsInSystem,
                        ),
                      ],
                    ),
                  ),
                  SettingPanel(
                    theme: theme,
                    child: Row(
                      children: [
                        Text(
                          'Не выключать экран',
                          style: textBodyReg.copyWith(
                            color: typographyPrimary(theme),
                          ),
                        ),
                        const Spacer(),
                        Switch.adaptive(
                          value: state.doNotSwitchOffScreen,
                          onChanged: context
                              .read<ThemeCubit>()
                              .setDoNotSwitchOffScreen,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Column(
                spacing: 8,
                children: [
                  Row(
                    spacing: 8,
                    children: [
                      _Theme(
                        theme: theme,
                        title: 'Светлая синяя',
                        icon: 'light',
                        onTap: () => context.read<ThemeCubit>().setTheme(
                          .light,
                        ),
                        active: state.theme == .light,
                      ),
                      _Theme(
                        theme: theme,
                        title: 'Темная синяя',
                        icon: 'dark',
                        onTap: () => context.read<ThemeCubit>().setTheme(
                          .dark,
                        ),
                        active: state.theme == .dark,
                      ),
                    ],
                  ),
                  Row(
                    spacing: 8,
                    children: [
                      _Theme(
                        theme: theme,
                        title: 'Светлая коричневая',
                        icon: 'brown-light',
                        onTap: () => context.read<ThemeCubit>().setTheme(
                          .brownLight,
                        ),
                        active: state.theme == .brownLight,
                      ),
                      _Theme(
                        theme: theme,
                        title: 'Темная коричневая',
                        icon: 'brown-dark',
                        onTap: () => context.read<ThemeCubit>().setTheme(
                          .brownDark,
                        ),
                        active: state.theme == .brownDark,
                      ),
                    ],
                  ),
                ],
              ),
            ],
          );
        },
      ),
    );
  }
}

class _Theme extends StatelessWidget {
  const _Theme({
    required this.theme,
    required this.title,
    required this.icon,
    required this.onTap,
    required this.active,
  });

  final AppTheme theme;
  final String title;
  final String icon;
  final bool active;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GestureDetector(
        onTap: onTap,
        child: SizedBox(
          height: 135,
          child: SettingPanel(
            radius: 8,
            theme: theme,
            active: active,
            child: Column(
              spacing: 8,
              mainAxisAlignment: .center,
              children: [
                Text(
                  title,
                  style: textBodyMedium.copyWith(
                    color: typographyPrimary(theme),
                  ),
                ),
                SvgPicture.asset('assets/icons/theme-$icon.svg'),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

// @Preview(group: 'Theme settings', name: 'Light')
// Widget previewLight() => sizedWrapper(
//   BlocProvider(
//     create: (context) => ThemeCubit(),
//     child: const ThemeSettings(theme: .light),
//   ),
//   width: 400,
//   hight: 510,
//   padding: 0,
// );
