import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:tafsir/aayaat/ui/scroll_position_widget.dart';
import 'package:tafsir/common/domain/scope_functions.dart';
import 'package:tafsir/common/ui/app_theme.dart';
import 'package:tafsir/main/domain/surah.dart';
import 'package:tafsir/theme/cubit/theme_cubit.dart';

class SurahHeader extends StatelessWidget {
  const SurahHeader({
    super.key,
    required this.surah,

    required this.onInfo,
    required this.onSuwar,
    required this.onTheme,
    required this.onSettings,
    required this.onGoToAyah,
  });

  final Surah surah;

  final VoidCallback onInfo;
  final VoidCallback onSuwar;
  final VoidCallback onTheme;
  final VoidCallback onSettings;
  final VoidCallback onGoToAyah;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ThemeCubit, ThemeState>(
      builder: (context, themeState) {
        return Container(
          padding: const .symmetric(horizontal: 20, vertical: 8),
          decoration: BoxDecoration(
            color: bgSecondary(themeState.theme),
            borderRadius: const .vertical(bottom: .circular(20)),
          ),
          child: Column(
            children: [
              SizedBox(height: MediaQuery.paddingOf(context).top),
              ScrollPositionWidget(quantity: surah.quantity),
              const SizedBox(height: 8),
              Row(
                spacing: 12,
                children: [
                  GestureDetector(
                    onTap: () => Navigator.pop(context),
                    child: Container(
                      padding: const .all(6),
                      decoration: BoxDecoration(
                        borderRadius: .circular(8),
                        color: bgPrimary(themeState.theme),
                      ),
                      child: SvgPicture.asset(
                        'assets/icons/arrow-left-surah.svg',
                        colorFilter: .mode(
                          typographyPrimary(themeState.theme),
                          .srcIn,
                        ),
                      ),
                    ),
                  ),

                  Flexible(
                    child: GestureDetector(
                      onTap: onSuwar,
                      child: Column(
                        mainAxisSize: .min,
                        mainAxisAlignment: .center,
                        crossAxisAlignment: .start,
                        children: [
                          Row(
                            spacing: 2,
                            children: [
                              Text(
                                '${surah.number}.',
                                style: textHeadline.copyWith(
                                  height: 0,
                                  color: typographyPrimary(themeState.theme),
                                ),
                              ),
                              Flexible(
                                child: Text(
                                  surah.name,
                                  overflow: .ellipsis,
                                  style: textHeadline.copyWith(
                                    height: 0,
                                    color: typographyPrimary(themeState.theme),
                                  ),
                                ),
                              ),
                              SvgPicture.asset(
                                'assets/icons/arrow-up-right-surah.svg',
                                colorFilter: .mode(
                                  typographyPrimary(themeState.theme),
                                  .srcIn,
                                ),
                              ),
                            ],
                          ),

                          ?surah.translation?.let(
                            (it) => Flexible(
                              child: Text(
                                it,
                                overflow: .ellipsis,
                                style: textBodyMedium.copyWith(
                                  height: 0,
                                  color: typographySecondary(themeState.theme),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),

                  Row(
                    spacing: 8,
                    children: [
                      _Icon(
                        onTap: onGoToAyah,
                        icon: 'go-to-ayah',
                        theme: themeState.theme,
                      ),
                      _Icon(
                        onTap: onInfo,
                        icon: 'surah-info',
                        theme: themeState.theme,
                      ),
                      _Icon(
                        onTap: onTheme,
                        icon: 'theme',
                        theme: themeState.theme,
                      ),
                      _Icon(
                        onTap: onSettings,
                        icon: 'settings',
                        theme: themeState.theme,
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        );
      },
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
//   BlocProvider(
//     create: (context) => ThemeCubit(.new(.new())),
//     child: SurahHeader(
//       surah: const .new(
//         .new(1),
//         .new('Name Name Name Name'),
//         .new('value'),
//         .new('value'),
//         .makkah,
//         .new('Translation Translation Translation'),
//         .new(7),
//       ),

//       position: const .new(.new(1), 0),

//       onInfo: () => print('on info'),
//       onSuwar: () => print('on suwar'),
//       onTheme: () => print('on theme'),
//       onSettings: () => print('on settings'),
//       onGoToAyah: () => print('on go to ayah'),
//     ),
//   ),
//   width: 500,
// );
