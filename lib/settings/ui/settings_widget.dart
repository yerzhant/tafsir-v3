import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:tafsir/common/ui/app_theme.dart';
import 'package:tafsir/common/ui/setting_panel.dart';
import 'package:tafsir/settings/cubit/settings_cubit.dart';
import 'package:tafsir/settings/ui/ayah_fonts_list.dart';
import 'package:tafsir/theme/cubit/theme_cubit.dart';

class SettingsWidget extends StatelessWidget {
  const SettingsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = context.read<ThemeCubit>().state.theme;

    return SingleChildScrollView(
      padding: const .symmetric(horizontal: 20, vertical: 12),
      child: BlocBuilder<SettingsCubit, SettingsState>(
        builder: (context, state) {
          return Column(
            spacing: 12,
            children: [
              Column(
                crossAxisAlignment: .start,
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
                      padding: const .all(4),
                      child: Column(
                        spacing: 8,
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
              Column(
                crossAxisAlignment: .start,
                spacing: 8,
                children: [
                  Text(
                    'Размер шрифта',
                    style: textCallout.copyWith(
                      color: typographyPrimary(theme),
                    ),
                  ),
                  SettingPanel(
                    padding: 16,
                    theme: theme,
                    child: Column(
                      spacing: 12,
                      children: [
                        _Slider(
                          theme: theme,
                          title: 'Арабский текст',
                          value: state.ayahFontSize,
                          onChanged: context
                              .read<SettingsCubit>()
                              .setAyahFontSize,
                        ),
                        _Slider(
                          theme: theme,
                          title: 'Текст перевода',
                          value: state.tranlationFontSize,
                          onChanged: context
                              .read<SettingsCubit>()
                              .setTranslationFontSize,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              GestureDetector(
                onTap: () => _showFonts(context),
                child: SettingPanel(
                  theme: theme,
                  child: Row(
                    mainAxisAlignment: .spaceBetween,
                    spacing: 4,
                    children: [
                      Text(
                        'Арабский шрифт',
                        style: textBodyReg.copyWith(
                          color: typographyPrimary(theme),
                        ),
                      ),
                      Expanded(
                        child: Text(
                          overflow: .ellipsis,
                          state.ayayFonType.name,
                          style: textBodyMedium.copyWith(
                            color: typographyTertirary(theme),
                          ),
                        ),
                      ),
                      SvgPicture.asset(
                        'assets/icons/caret-right.svg',
                        colorFilter: .mode(
                          typographyLabelsAndIcons(theme),
                          .srcIn,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          );
        },
      ),
    );
  }

  void _showFonts(BuildContext context) {
    showModalBottomSheet(
      context: context,
      useSafeArea: true,
      showDragHandle: true,
      isScrollControlled: true,
      builder: (context) => const AyahFontsList(),
    );
  }
}

class _Slider extends StatelessWidget {
  const _Slider({
    required this.theme,
    required this.title,
    required this.value,
    required this.onChanged,
  });

  final AppTheme theme;
  final String title;
  final double value;
  final Function(double value) onChanged;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: .start,
      spacing: 8,
      children: [
        Text(
          title,
          style: textBodyMedium.copyWith(color: typographyPrimary(theme)),
        ),
        Row(
          children: [
            Expanded(
              child: Slider.adaptive(
                min: 10,
                max: 30,
                value: value,
                onChanged: onChanged,
                activeColor: borderPrimary(theme),
                inactiveColor: borderPrimary(theme),
                thumbColor: typographyPrimary(theme),
              ),
            ),
            SizedBox(
              width: 35,
              child: Text(
                textAlign: .end,
                value.toStringAsFixed(1),
                style: textBodyMedium.copyWith(color: typographyPrimary(theme)),
              ),
            ),
          ],
        ),
      ],
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
          materialTapTargetSize: .shrinkWrap,
          activeColor: alertSuccess200(theme),
          onChanged: (value) => onChanged(value!),
          visualDensity: const .new(horizontal: -4, vertical: -4),
        ),
        Text(
          title,
          style: textBodyReg.copyWith(color: typographyPrimary(theme)),
        ),
      ],
    );
  }
}

// @Preview(group: 'Settings Widget', name: 'Light')
// Widget previewLight() => sizedWrapper(
//   BlocProvider(
//     create: (context) => SettingsCubit(),
//     child: SettingsWidget(
//       theme: .light,
//       onFontTap: () => print('on font tap'),
//     ),
//   ),
//   width: 400,
//   hight: 600,
//   padding: 0,
// );
