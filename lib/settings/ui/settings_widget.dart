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
    return SingleChildScrollView(
      padding: .only(
        right: 20,
        left: 20,
        top: 12,
        bottom: MediaQuery.paddingOf(context).bottom,
      ),
      child: BlocBuilder<SettingsCubit, SettingsState>(
        builder: (context, settings) {
          return BlocBuilder<ThemeCubit, ThemeState>(
            builder: (context, themeState) {
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
                          color: typographyPrimary(themeState.theme),
                        ),
                      ),
                      SettingPanel(
                        theme: themeState.theme,
                        child: Padding(
                          padding: const .all(4),
                          child: Column(
                            spacing: 8,
                            children: [
                              _Checkbox(
                                theme: themeState.theme,
                                title: 'Арабский текст',
                                value: settings.showAyah,
                                onChanged: context
                                    .read<SettingsCubit>()
                                    .setShowAyah,
                              ),
                              _Checkbox(
                                theme: themeState.theme,
                                title: 'Перевод',
                                value: settings.showTranslation,
                                onChanged: context
                                    .read<SettingsCubit>()
                                    .setShowTranslation,
                              ),
                              _Checkbox(
                                theme: themeState.theme,
                                title: 'Тафсир',
                                value: settings.showTafsir,
                                onChanged: context
                                    .read<SettingsCubit>()
                                    .setShowTafsir,
                              ),
                              _Checkbox(
                                theme: themeState.theme,
                                title: 'Сноски',
                                value: settings.showFootnotes,
                                onChanged: settings.showTafsir
                                    ? context
                                          .read<SettingsCubit>()
                                          .setShowFootnotes
                                    : null,
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
                          color: typographyPrimary(themeState.theme),
                        ),
                      ),
                      SettingPanel(
                        padding: 16,
                        theme: themeState.theme,
                        child: Column(
                          spacing: 12,
                          children: [
                            _Slider(
                              min: 14,
                              max: 48,
                              theme: themeState.theme,
                              title: 'Арабский текст',
                              value: settings.ayahFontSize,
                              onChanged: context
                                  .read<SettingsCubit>()
                                  .setAyahFontSize,
                            ),
                            _Slider(
                              min: 12,
                              max: 30,
                              theme: themeState.theme,
                              title: 'Текст перевода',
                              value: settings.translationFontSize,
                              onChanged: context
                                  .read<SettingsCubit>()
                                  .setTranslationFontSize,
                            ),
                            _Slider(
                              min: 12,
                              max: 30,
                              theme: themeState.theme,
                              title: 'Текст тафсира',
                              value: settings.tafsirFontSize,
                              onChanged: context
                                  .read<SettingsCubit>()
                                  .setTafsirFontSize,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  InkWell(
                    onTap: () => _showFonts(context),
                    borderRadius: .circular(12),
                    child: SettingPanel(
                      theme: themeState.theme,
                      child: Row(
                        mainAxisAlignment: .spaceBetween,
                        spacing: 4,
                        children: [
                          Text(
                            'Арабский шрифт',
                            style: textBodyReg.copyWith(
                              color: typographyPrimary(themeState.theme),
                            ),
                          ),
                          Expanded(
                            child: Text(
                              overflow: .ellipsis,
                              settings.ayahFontType.family,
                              style: textBodyMedium.copyWith(
                                color: typographyTertirary(themeState.theme),
                              ),
                            ),
                          ),
                          SvgPicture.asset(
                            'assets/icons/caret-right.svg',
                            colorFilter: .mode(
                              typographyLabelsAndIcons(themeState.theme),
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
    required this.min,
    required this.max,
    required this.value,
    required this.onChanged,
  });

  final String title;
  final AppTheme theme;
  final double value, min, max;
  final ValueChanged<double> onChanged;

  @override
  Widget build(BuildContext context) {
    final trackColor = switch (theme) {
      .dark => borderTertirary(theme),
      .light || .brownLight || .brownDark => borderPrimary(theme),
    };

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
              child: Slider(
                min: min,
                max: max,
                value: value,
                onChanged: onChanged,
                activeColor: trackColor,
                inactiveColor: trackColor,
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

  final ValueChanged<bool>? onChanged;
  final AppTheme theme;
  final String title;
  final bool value;

  @override
  Widget build(BuildContext context) {
    final inactiveColor = theme.brightness == .dark
        ? typographySecondary(theme)
        : typographyTertirary(theme);

    return Row(
      spacing: 8,
      children: [
        Checkbox(
          value: value,
          checkColor: Colors.white,
          materialTapTargetSize: .shrinkWrap,
          activeColor: onChanged != null
              ? alertSuccess200(theme)
              : inactiveColor,
          onChanged: (value) => onChanged?.call(value!),
          visualDensity: const .new(horizontal: -4, vertical: -4),
        ),
        Text(
          title,
          style: textBodyReg.copyWith(
            color: onChanged != null ? typographyPrimary(theme) : inactiveColor,
          ),
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
