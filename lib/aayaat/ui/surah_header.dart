import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:tafsir/aayaat/cubit/player_cubit.dart';
import 'package:tafsir/aayaat/ui/player_widget.dart';
import 'package:tafsir/aayaat/ui/scroll_position_widget.dart';
import 'package:tafsir/common/domain/error.dart';
import 'package:tafsir/common/domain/scope_functions.dart';
import 'package:tafsir/common/ui/app_error_widget.dart';
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
          decoration: BoxDecoration(
            color: bgPrimary(themeState.theme),
            borderRadius: const .vertical(bottom: .circular(20)),
          ),
          child: Container(
            decoration: BoxDecoration(
              color: bgSecondary(themeState.theme),
              borderRadius: const .vertical(bottom: .circular(20)),
            ),
            child: Column(
              children: [
                SizedBox(height: MediaQuery.paddingOf(context).top),

                _Player(theme: themeState.theme),

                Padding(
                  padding: const .only(right: 20, left: 20, bottom: 8),
                  child: Column(
                    children: [
                      ScrollPositionWidget(quantity: surah.quantity),

                      const SizedBox(height: 8),

                      _Main(
                        surah: surah,
                        onInfo: onInfo,
                        onSuwar: onSuwar,
                        onTheme: onTheme,
                        onGoToAyah: onGoToAyah,
                        onSettings: onSettings,
                        theme: themeState.theme,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}

class _Player extends StatelessWidget {
  const _Player({required this.theme});

  final AppTheme theme;

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<PlayerCubit, PlayerState>(
      listener: (context, state) {
        if (state case PlayerStateFailure(:final error)) {
          _showError(context, error);
        }
      },
      builder: (context, state) {
        return switch (state) {
          PlayerStatePlaying(
            :final isReady,
            :final isPaused,
            :final isLooping,
            :final position,
          ) =>
            Column(
              children: [
                PlayerWidget(
                  theme: theme,
                  position: position,
                  isPaused: isPaused,
                  isLooping: isLooping,
                  isDisabled: !isReady,
                  onClosed: context.read<PlayerCubit>().stop,
                ),

                const SizedBox(height: 8),
              ],
            ),

          PlayerStateFailure() || PlayerStateInactive() => const SizedBox(),
        };
      },
    );
  }

  void _showError(BuildContext context, AppError error) {
    showModalBottomSheet(
      context: context,
      useSafeArea: true,
      showDragHandle: true,
      isScrollControlled: true,
      builder: (context) => SafeArea(
        child: AppErrorWidget(
          onPressed: () => Navigator.pop(context),
          error: error,
          size: .min,
        ),
      ),
    );
  }
}

class _Main extends StatelessWidget {
  const _Main({
    required this.surah,
    required this.theme,
    required this.onInfo,
    required this.onSuwar,
    required this.onTheme,
    required this.onSettings,
    required this.onGoToAyah,
  });

  final Surah surah;
  final AppTheme theme;

  final VoidCallback onInfo;
  final VoidCallback onSuwar;
  final VoidCallback onTheme;
  final VoidCallback onGoToAyah;
  final VoidCallback onSettings;

  @override
  Widget build(BuildContext context) {
    return Row(
      spacing: 12,
      children: [
        InkWell(
          onTap: () => Navigator.pop(context),
          borderRadius: .circular(8),
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
          child: InkWell(
            onTap: onSuwar,
            borderRadius: .circular(5),
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
                        color: typographyPrimary(theme),
                        height: 0,
                      ),
                    ),
                    Flexible(
                      child: Text(
                        surah.name,
                        overflow: .ellipsis,
                        style: textHeadline.copyWith(
                          color: typographyPrimary(theme),
                          height: 0,
                        ),
                      ),
                    ),
                    SvgPicture.asset(
                      'assets/icons/arrow-up-right-surah.svg',
                      colorFilter: .mode(typographyPrimary(theme), .srcIn),
                    ),
                  ],
                ),

                ?surah.translation?.let(
                  (it) => Flexible(
                    child: Text(
                      it,
                      overflow: .ellipsis,
                      style: textBodyMedium.copyWith(
                        color: typographySecondary(theme),
                        height: 0,
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
              theme: theme,
              onTap: onGoToAyah,
              icon: 'go-to-ayah',
            ),
            _Icon(
              theme: theme,
              onTap: onInfo,
              icon: 'surah-info',
            ),
            _Icon(
              theme: theme,
              onTap: onTheme,
              icon: 'theme',
            ),
            _Icon(
              theme: theme,
              onTap: onSettings,
              icon: 'settings',
            ),
          ],
        ),
      ],
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
    return InkWell(
      onTap: onTap,
      borderRadius: .circular(5),
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
