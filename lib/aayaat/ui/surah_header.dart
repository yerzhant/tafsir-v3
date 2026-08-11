import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:tafsir/common/domain/scope_functions.dart';
import 'package:tafsir/common/ui/app_theme.dart';
import 'package:tafsir/main/domain/surah.dart';
import 'package:tafsir/theme/cubit/theme_cubit.dart';

class SurahHeader extends StatelessWidget {
  const SurahHeader({
    super.key,
    required this.name,
    required this.number,
    required this.translation,

    required this.onInfo,
    required this.onSuwar,
    required this.onTheme,
    required this.onSettings,
    required this.onGoToAyah,
  });

  final SurahName name;
  final SurahNumber number;
  final SurahTranslation? translation;

  final VoidCallback onInfo;
  final VoidCallback onSuwar;
  final VoidCallback onTheme;
  final VoidCallback onSettings;
  final VoidCallback onGoToAyah;

  @override
  Widget build(BuildContext context) {
    final theme = context.read<ThemeCubit>().state.theme;

    return Container(
      padding: const .symmetric(horizontal: 20, vertical: 8),
      decoration: BoxDecoration(
        color: bgSecondary(theme),
        borderRadius: const .vertical(bottom: .circular(20)),
      ),
      child: Column(
        children: [
          SizedBox(height: MediaQuery.paddingOf(context).top),
          Row(
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

              Flexible(
                child: Column(
                  mainAxisSize: .min,
                  mainAxisAlignment: .center,
                  crossAxisAlignment: .start,
                  children: [
                    Row(
                      spacing: 2,
                      children: [
                        Text(
                          '$number.',
                          style: textHeadline.copyWith(
                            height: 0,
                            color: typographyPrimary(theme),
                          ),
                        ),
                        Flexible(
                          child: Text(
                            name,
                            overflow: .ellipsis,
                            style: textHeadline.copyWith(
                              height: 0,
                              color: typographyPrimary(theme),
                            ),
                          ),
                        ),
                        // _Icon(
                        //   icon: 'arrow-up-right-surah',
                        //   theme: theme,
                        //   onTap: onSuwar,
                        // ),
                      ],
                    ),

                    ?translation?.let(
                      (it) => Flexible(
                        child: Text(
                          it,
                          overflow: .ellipsis,
                          style: textBodyMedium.copyWith(
                            height: 0,
                            color: typographySecondary(theme),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),

              Row(
                spacing: 8,
                children: [
                  _Icon(theme: theme, onTap: onGoToAyah, icon: 'go-to-ayah'),
                  _Icon(theme: theme, onTap: onInfo, icon: 'surah-info'),
                  _Icon(theme: theme, onTap: onTheme, icon: 'theme'),
                  _Icon(theme: theme, onTap: onSettings, icon: 'settings'),
                ],
              ),
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
