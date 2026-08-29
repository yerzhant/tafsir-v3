import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:tafsir/aayaat/cubit/player_cubit.dart';
import 'package:tafsir/aayaat/domain/player_position.dart';
import 'package:tafsir/common/ui/app_theme.dart';

class PlayerWidget extends StatelessWidget {
  const PlayerWidget({
    super.key,
    required this.theme,

    required this.isPaused,
    required this.isLooping,
    required this.isDisabled,

    required this.position,

    required this.onClosed,
  });

  final AppTheme theme;

  final bool isPaused;
  final bool isLooping;
  final bool isDisabled;

  final PlayerPosition position;

  final VoidCallback onClosed;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: theme.brightness == .dark
            ? bgTertirary(theme)
            : brandSoft(theme),
        border: .symmetric(
          horizontal: BorderSide(color: borderSecondary(theme)),
        ),
      ),
      child: Stack(
        alignment: .bottomStart,
        children: [
          Padding(
            padding: const EdgeInsets.all(12),
            child: Row(
              mainAxisAlignment: .spaceBetween,
              children: [
                Row(
                  spacing: 20,
                  children: [
                    _Button(
                      theme: theme,
                      icon: 'close',
                      isClose: true,
                      onTap: onClosed,
                      isDisabled: isDisabled,
                    ),
                    const SizedBox(width: 24),
                  ],
                ),
                Text(
                  position.title,
                  style: textBodyReg.copyWith(color: typographyPrimary(theme)),
                ),
                Row(
                  spacing: 20,
                  children: [
                    _Button(
                      theme: theme,
                      icon: 'loop',
                      isActive: isLooping,
                      isDisabled: isDisabled,
                      onTap: context.read<PlayerCubit>().loop,
                    ),
                    _Button(
                      theme: theme,
                      icon: 'pause',
                      isActive: isPaused,
                      isDisabled: isDisabled,
                      onTap: context.read<PlayerCubit>().pause,
                    ),
                  ],
                ),
              ],
            ),
          ),
          LayoutBuilder(
            builder: (context, constraints) => AnimatedContainer(
              height: 4,
              decoration: BoxDecoration(
                color: brandPrimary(theme),
                borderRadius: .circular(2),
              ),
              duration: const .new(milliseconds: 300),
              width: constraints.maxWidth * position.position,
            ),
          ),
        ],
      ),
    );
  }
}

class _Button extends StatelessWidget {
  const _Button({
    required this.icon,
    required this.theme,
    required this.onTap,
    this.isClose = false,
    this.isActive = false,
    required this.isDisabled,
  });

  final String icon;
  final bool isClose;
  final bool isActive;
  final bool isDisabled;
  final AppTheme theme;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: isDisabled ? null : onTap,
      child: SvgPicture.asset(
        'assets/icons/player-$icon.svg',
        colorFilter: .mode(_color(), .srcIn),
      ),
    );
  }

  Color _color() {
    if (isDisabled) {
      if (theme.brightness == .dark) return bgTertirary(theme);
      return brandSoft(theme);
    }

    if (isClose) typographyPrimary(theme);
    if (isActive) return typographyLink(theme);

    return typographyLabelsAndIcons(theme);
  }
}

// @Preview(group: 'Surah Navigator', name: 'Light')
// Widget previewLight() => sizedWrapper(
//   Column(
//     children: [
//       Player(
//         theme: .light,
//         onClosed: () => print('closed'),
//       ),
//     ],
//   ),
// );
