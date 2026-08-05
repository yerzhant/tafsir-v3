import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tafsir/common/ui/app_theme.dart';
import 'package:tafsir/common/ui/setting_panel.dart';
import 'package:tafsir/settings/cubit/settings_cubit.dart';
import 'package:tafsir/settings/domain/ayah_font_type.dart';

class AyahFontsList extends StatelessWidget {
  const AyahFontsList({
    super.key,
    required this.theme,
    required this.onSelected,
  });

  final AppTheme theme;
  final Function(AyahFontType type) onSelected;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SettingsCubit, SettingsState>(
      builder: (context, state) {
        return RadioGroup<AyahFontType>(
          groupValue: state.ayayFonType,
          onChanged: (value) => onSelected(value!),

          child: ListView.separated(
            itemBuilder: (context, index) => _Font(
              theme: theme,
              onSelected: onSelected,
              type: AyahFontType.values[index],
            ),
            itemCount: AyahFontType.values.length,
            padding: const .symmetric(horizontal: 20, vertical: 18),
            separatorBuilder: (context, index) => const SizedBox(height: 8),
          ),
        );
      },
    );
  }
}

class _Font extends StatelessWidget {
  const _Font({
    required this.theme,
    required this.type,
    required this.onSelected,
  });

  final AppTheme theme;
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
                  'الْحَمْدُ للّهِ رَبِّ الْعَالَمِينَ',
                  style: textBodyLarge.copyWith(
                    color: typographyPrimary(theme),
                  ),
                ),
                Text(
                  type.name,
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
