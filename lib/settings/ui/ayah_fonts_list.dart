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
    final theme = context.read<ThemeCubit>().state.theme;
    final settings = context.read<SettingsCubit>().state;

    return SafeArea(
      child: RadioGroup<AyahFontType>(
        groupValue: settings.ayahFontType,
        onChanged: (value) => _onSelected(value!, context),

        child: ListView.separated(
          shrinkWrap: true,
          itemCount: AyahFontType.values.length,
          itemBuilder: (context, index) => _Font(
            theme: theme,
            fontSize: settings.ayahFontSize,
            type: AyahFontType.values[index],
            onSelected: (type) => _onSelected(type, context),
          ),
          padding: const .only(right: 20, left: 20, bottom: 18),
          separatorBuilder: (context, index) => const SizedBox(height: 8),
        ),
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
    required this.theme,
    required this.fontSize,
    required this.onSelected,
  });

  final AppTheme theme;
  final double fontSize;
  final AyahFontType type;
  final Function(AyahFontType type) onSelected;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => onSelected(type),
      child: SettingPanel(
        theme: theme,
        child: Row(
          crossAxisAlignment: .start,
          spacing: 12,
          children: [
            Radio<AyahFontType>.adaptive(
              value: type,
              activeColor: alertSuccess200(theme),
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
                    color: typographyPrimary(theme),
                  ),
                ),
                Text(
                  type.fontFamily,
                  style: textBodyReg.copyWith(
                    color: typographySecondary(theme),
                  ),
                ),
              ],
            ),
          ],
        ),
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
