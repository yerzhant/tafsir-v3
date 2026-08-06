import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:tafsir/common/ui/app_theme.dart';
import 'package:tafsir/main/domain/surah.dart';

class SurahHeader extends StatelessWidget {
  const SurahHeader({
    super.key,
    required this.theme,
    required this.number,
    required this.name,
    required this.translation,

    required this.onInfo,
    required this.onSuwar,
    required this.onTheme,
    required this.onSettings,
    required this.onGoToAyah,
  });

  final AppTheme theme;

  final SurahNumber number;
  final SurahName name;
  final SurahTranslation translation;

  final VoidCallback onInfo;
  final VoidCallback onSuwar;
  final VoidCallback onTheme;
  final VoidCallback onSettings;
  final VoidCallback onGoToAyah;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const .symmetric(horizontal: 20, vertical: 8),
      decoration: BoxDecoration(
        borderRadius: const .vertical(bottom: .circular(20)),
        color: bgSecondary(theme),
      ),
      child: Row(
        spacing: 12,
        children: [
          GestureDetector(
            onTap: () => Navigator.pop(context),
            child: Container(
              padding: const .all(6),
              decoration: BoxDecoration(
                borderRadius: .circular(8),
                color: bgPrimary(theme),
              ),
              child: SvgPicture.asset(
                'assets/icons/arrow-left-surah.svg',
                colorFilter: .mode(typographyPrimary(theme), .srcIn),
              ),
            ),
          ),

          Expanded(
            child: Column(
              children: [
                Row(
                  spacing: 2,
                  children: [
                    Text(
                      '$number.',
                      style: textHeadline.copyWith(
                        color: typographyPrimary(theme),
                      ),
                    ),
                    Expanded(
                      child: Text(
                        name,
                        overflow: .ellipsis,
                        style: textHeadline.copyWith(
                          color: typographyPrimary(theme),
                        ),
                      ),
                    ),
                    _Icon(
                      icon: 'arrow-up-right-surah',
                      theme: theme,
                      onTap: onSuwar,
                    ),
                  ],
                ),

                Expanded(
                  child: Text(
                    translation,
                    overflow: .ellipsis,
                    style: textBodyMedium.copyWith(
                      color: typographySecondary(theme),
                    ),
                  ),
                ),
              ],
            ),
          ),

          Row(
            spacing: 8,
            children: [
              _Icon(icon: 'go-to-ayah', theme: theme, onTap: onGoToAyah),
              _Icon(icon: 'surah-info', theme: theme, onTap: onInfo),
              _Icon(icon: 'theme', theme: theme, onTap: onTheme),
              _Icon(icon: 'settings', theme: theme, onTap: onSettings),
            ],
          ),
        ],
      ),
    );
  }
}

class _Icon extends StatelessWidget {
  const _Icon({
    required this.icon,
    required this.theme,
    required this.onTap,
  });

  final String icon;
  final AppTheme theme;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: SvgPicture.asset(
        'assets/icons/$icon.svg',
        colorFilter: .mode(typographyPrimary(theme), .srcIn),
      ),
    );
  }
}

// @Preview(group: 'Surah Header', name: 'Light')
// Widget previewLight() => sizedWrapper(
//   SurahHeader(
//     theme: .light,

//     number: const .new(1),
//     name: const .new('Name Name Name Name'),
//     translation: const .new('Translation Translation Translation'),

//     onInfo: () => print('on info'),
//     onSuwar: () => print('on suwar'),
//     onTheme: () => print('on theme'),
//     onSettings: () => print('on settings'),
//     onGoToAyah: () => print('on go to ayah'),
//   ),
//   width: 500,
// );
