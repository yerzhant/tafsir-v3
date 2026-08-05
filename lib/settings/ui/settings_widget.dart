import 'package:flutter/material.dart';
import 'package:flutter/widget_previews.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tafsir/common/ui/app_theme.dart';
import 'package:tafsir/common/ui/preview.dart';
import 'package:tafsir/common/ui/setting_panel.dart';
import 'package:tafsir/settings/cubit/settings_cubit.dart';

class SettingsWidget extends StatelessWidget {
  const SettingsWidget({super.key, required this.theme});

  final AppTheme theme;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const .symmetric(horizontal: 20, vertical: 12),
      child: BlocBuilder<SettingsCubit, SettingsState>(
        builder: (context, state) {
          return Column(
            spacing: 12,
            children: [
              Column(
                spacing: 8,
                children: [
                  Text(
                    'Отображать',
                    style: textCallout.copyWith(
                      color: typographyPrimary(theme),
                    ),
                  ),
                  SettingPanel(
                    theme: theme,
                    child: Padding(
                      padding: const .all(16),
                      child: Column(
                        spacing: 16,
                        children: [
                          _Checkbox(
                            theme: theme,
                            title: 'Арабский текст',
                            value: state.showAyah,
                            onChanged: context
                                .read<SettingsCubit>()
                                .setShowAyah,
                          ),
                          _Checkbox(
                            theme: theme,
                            title: 'Перевод',
                            value: state.showTranslation,
                            onChanged: context
                                .read<SettingsCubit>()
                                .setShowTranslation,
                          ),
                          _Checkbox(
                            theme: theme,
                            title: 'Тафсир',
                            value: state.showTafsir,
                            onChanged: context
                                .read<SettingsCubit>()
                                .setShowTafsir,
                          ),
                          _Checkbox(
                            theme: theme,
                            title: 'Сноски',
                            value: state.showFootnotes,
                            onChanged: context
                                .read<SettingsCubit>()
                                .setShowFootnotes,
                          ),
                        ],
                      ),
                    ),
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

class _Checkbox extends StatelessWidget {
  const _Checkbox({
    required this.theme,
    required this.title,
    required this.value,
    required this.onChanged,
  });

  final AppTheme theme;
  final String title;
  final bool value;
  final Function(bool value) onChanged;

  @override
  Widget build(BuildContext context) {
    return Row(
      spacing: 8,
      children: [
        Checkbox.adaptive(
          value: value,
          activeColor: alertSuccess200(theme),
          onChanged: (value) => onChanged(value!),
        ),
        Text(
          title,
          style: textBodyReg.copyWith(color: typographyPrimary(theme)),
        ),
      ],
    );
  }
}

@Preview(group: 'Settings Widget', name: 'Light')
Widget previewLight() => sizedWrapper(
  BlocProvider(
    create: (context) => SettingsCubit(),
    child: const SettingsWidget(theme: .light),
  ),
  width: 500,
  hight: 300,
  padding: 0,
);
