import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:tafsir/common/ui/app_theme.dart';
import 'package:tafsir/common/ui/setting_panel.dart';
import 'package:tafsir/theme/cubit/theme_cubit.dart';

class ThemeSettings extends StatelessWidget {
  const ThemeSettings({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      bottom: false,
      child: Padding(
        padding: .only(
          right: 20,
          left: 20,
          bottom: MediaQuery.paddingOf(context).bottom,
        ),
        child: BlocBuilder<ThemeCubit, ThemeState>(
          builder: (context, state) {
            return Column(
              crossAxisAlignment: .start,
              mainAxisSize: .min,
              spacing: 12,
              children: [
                Column(
                  crossAxisAlignment: .start,
                  spacing: 8,
                  children: [
                    Text(
                      'Настройки темы',
                      style: textHeadline.copyWith(
                        color: typographyPrimary(state.theme),
                      ),
                    ),
                    _Switch(
                      theme: state.theme,
                      title: 'Как в системе',
                      value: state.sameAsInSystem,
                      onChanged: context.read<ThemeCubit>().setSameAsInSystem,
                    ),
                    _Switch(
                      theme: state.theme,
                      title: 'Не выключать экран',
                      value: state.doNotSwitchOffScreen,
                      onChanged: context
                          .read<ThemeCubit>()
                          .setDoNotSwitchOffScreen,
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
                          icon: 'light',
                          theme: state.theme,
                          title: 'Светлая синяя',
                          active: state.savedTheme == .light,
                          onTap: () => context.read<ThemeCubit>().setTheme(
                            .light,
                          ),
                        ),
                        _Theme(
                          icon: 'dark',
                          theme: state.theme,
                          title: 'Темная синяя',
                          active: state.savedTheme == .dark,
                          onTap: () => context.read<ThemeCubit>().setTheme(
                            .dark,
                          ),
                        ),
                      ],
                    ),
                    Row(
                      spacing: 8,
                      children: [
                        _Theme(
                          theme: state.theme,
                          icon: 'brown-light',
                          title: 'Светлая коричневая',
                          active: state.savedTheme == .brownLight,
                          onTap: () => context.read<ThemeCubit>().setTheme(
                            .brownLight,
                          ),
                        ),
                        _Theme(
                          theme: state.theme,
                          icon: 'brown-dark',
                          title: 'Темная коричневая',
                          active: state.savedTheme == .brownDark,
                          onTap: () => context.read<ThemeCubit>().setTheme(
                            .brownDark,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}

class _Switch extends StatelessWidget {
  const _Switch({
    required this.theme,
    required this.title,
    required this.value,
    required this.onChanged,
  });

  final ValueChanged<bool> onChanged;
  final AppTheme theme;
  final String title;
  final bool value;

  @override
  Widget build(BuildContext context) {
    return SettingPanel(
      theme: theme,
      child: Row(
        children: [
          Text(
            title,
            style: textBodyReg.copyWith(color: typographyPrimary(theme)),
          ),
          const Spacer(),
          CupertinoSwitch(
            value: value,
            onChanged: onChanged,
            // padding: const .all(0),
            // activeThumbColor: Colors.white,
            activeTrackColor: alertSuccess200(theme),
          ),
        ],
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

  final VoidCallback onTap;
  final AppTheme theme;
  final String title;
  final String icon;
  final bool active;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GestureDetector(
        onTap: onTap,
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
                textAlign: .center,
                style: textBodyMedium.copyWith(
                  color: !active
                      ? typographyPrimary(theme)
                      : switch (theme) {
                          .brownLight => typographyPrimary(theme),
                          .light => typographyPrimary(theme),
                          .brownDark => bgContainer(theme),
                          .dark => bgPrimary(theme),
                        },
                ),
              ),
              SvgPicture.asset('assets/icons/theme-$icon.svg'),
            ],
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
