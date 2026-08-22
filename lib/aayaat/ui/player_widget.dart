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
    required this.position,

    required this.onClosed,
  });

  final AppTheme theme;

  final bool isPaused;
  final bool isLooping;
  final PlayerPosition position;

  final VoidCallback onClosed;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: brandSoft(theme),
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
                _Button(
                  theme: theme,
                  icon: 'close',
                  isClose: true,
                  onTap: onClosed,
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
                      onTap: context.read<PlayerCubit>().loop,
                    ),
                    _Button(
                      theme: theme,
                      icon: 'pause',
                      isActive: isPaused,
                      onTap: context.read<PlayerCubit>().pause,
                    ),
                  ],
                ),
              ],
            ),
          ),
          LayoutBuilder(
            builder: (context, constraints) => Container(
              height: 4,
              decoration: BoxDecoration(
                color: brandPrimary(theme),
                borderRadius: .circular(2),
              ),
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
  });

  final String icon;
  final bool isClose;
  final bool isActive;
  final AppTheme theme;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: SvgPicture.asset(
        'assets/icons/player-$icon.svg',
        colorFilter: .mode(
          isClose
              ? typographyPrimary(theme)
              : isActive
              ? typographyLink(theme)
              : typographyLabelsAndIcons(theme),
          .srcIn,
        ),
      ),
    );
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
