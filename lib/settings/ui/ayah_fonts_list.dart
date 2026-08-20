import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tafsir/common/ui/app_theme.dart';
import 'package:tafsir/common/ui/setting_panel.dart';
import 'package:tafsir/settings/cubit/settings_cubit.dart';
import 'package:tafsir/settings/domain/ayah_font_type.dart';
import 'package:tafsir/theme/cubit/theme_cubit.dart';

class AyahFontsList extends StatelessWidget {
  const AyahFontsList({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      bottom: false,
      child: BlocBuilder<SettingsCubit, SettingsState>(
        builder: (context, settings) {
          return RadioGroup<AyahFontType>(
            groupValue: settings.ayahFontType,
            onChanged: (value) => _onSelected(value!, context),

            child: ListView.separated(
              shrinkWrap: true,
              itemCount: AyahFontType.values.length,
              itemBuilder: (context, index) => _Font(
                fontSize: settings.ayahFontSize,
                type: AyahFontType.values[index],
                onSelected: (type) => _onSelected(type, context),
              ),
              padding: .only(
                right: 20,
                left: 20,
                bottom: MediaQuery.paddingOf(context).bottom,
              ),
              separatorBuilder: (context, index) => const SizedBox(height: 8),
            ),
          );
        },
      ),
    );
  }

  void _onSelected(AyahFontType type, BuildContext context) {
    context.read<SettingsCubit>().setAyahFontType(type);
    Navigator.pop(context);
  }
}

class _Font extends StatelessWidget {
  const _Font({
    required this.type,
    required this.fontSize,
    required this.onSelected,
  });

  final double fontSize;
  final AyahFontType type;
  final Function(AyahFontType type) onSelected;

  @override
  Widget build(BuildContext context) {
    final settings = context.read<SettingsCubit>().state;

    return GestureDetector(
      onTap: () => onSelected(type),
      child: BlocBuilder<ThemeCubit, ThemeState>(
        builder: (context, state) {
          return SettingPanel(
            theme: state.theme,
            child: Row(
              crossAxisAlignment: .start,
              spacing: 12,
              children: [
                Radio<AyahFontType>(
                  value: type,
                  activeColor: alertSuccess200(state.theme),
                  fillColor: settings.ayahFontType != type
                      ? .all(typographySecondary(state.theme))
                      : null,
                ),
                Column(
                  crossAxisAlignment: .start,
                  spacing: 4,
                  children: [
                    Text(
                      'الْحَمْدُ لِلَّهِ رَبِّ الْعَالَمِينَ',
                      style: textBodyLarge.copyWith(
                        fontSize: fontSize,
                        fontFamily: type.fontFamily,
                        color: typographyPrimary(state.theme),
                      ),
                    ),
                    Text(
                      type.fontFamily,
                      style: textBodyReg.copyWith(
                        color: typographySecondary(state.theme),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}

// @Preview(group: 'Ayah Fonts List', name: 'Light')
// Widget previewLight() => sizedWrapper(
//   BlocProvider(
//     create: (context) => SettingsCubit(),
//     child: Builder(
//       builder: (context) {
//         return AyahFontsList(
//           theme: .light,
//           onSelected: context.read<SettingsCubit>().setAyahFontType,
//         );
//       },
//     ),
//   ),
//   width: 400,
//   hight: 400,
//   padding: 0,
// );
