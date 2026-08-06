import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:tafsir/common/ui/app_card.dart';
import 'package:tafsir/common/ui/app_theme.dart';
import 'package:tafsir/common/ui/circle_card.dart';
import 'package:tafsir/main/domain/surah.dart';

class SurahItem extends StatelessWidget {
  const SurahItem({
    super.key,
    required this.theme,
    required this.surah,
  });

  final AppTheme theme;
  final Surah surah;

  @override
  Widget build(BuildContext context) {
    final primaryColor = switch (theme) {
      .light => typographyPrimaryLight,
      .dark => typographyPrimaryDark,
      .brownLight => typographyPrimaryBrownLight,
      .brownDark => typographyPrimaryBrownDark,
    };

    final secondaryColor = switch (theme) {
      .light => typographySecondaryLight,
      .dark => typographySecondaryDark,
      .brownLight => typographySecondaryBrownLight,
      .brownDark => typographySecondaryBrownDark,
    };

    final dotColor = switch (theme) {
      .light => typographyTertiraryLight,
      .dark => typographyTertiraryDark,
      .brownLight => typographyTertiraryBrownLight,
      .brownDark => typographyTertiraryBrownDark,
    };

    final mapPinColor = switch (theme) {
      .light => typographyLabelsAndIconsLight,
      .dark => typographyLabelsAndIconsDark,
      .brownLight => typographyLabelsAndIconsBrownLight,
      .brownDark => typographyLabelsAndIconsBrownDark,
    };

    return AppCard(
      theme: theme,
      child: Row(
        spacing: 8,
        children: [
          CircleCard(
            theme: theme,
            child: Text(
              '${surah.number}',
              style: textCallout.copyWith(color: primaryColor),
            ),
          ),
          Expanded(
            child: Column(
              spacing: 2,
              mainAxisAlignment: .center,
              crossAxisAlignment: .start,
              children: [
                Text(
                  surah.name,
                  overflow: .ellipsis,
                  style: textCallout.copyWith(color: primaryColor),
                ),
                Row(
                  children: [
                    Flexible(
                      child: Text(
                        surah.translation,
                        overflow: .ellipsis,
                        style: textBodyMedium.copyWith(color: secondaryColor),
                      ),
                    ),
                    const SizedBox(width: 4),
                    Container(
                      width: 4,
                      height: 4,
                      decoration: BoxDecoration(
                        color: dotColor,
                        shape: .circle,
                      ),
                    ),
                    const SizedBox(width: 4),
                    SvgPicture.asset(
                      'assets/icons/map-pin.svg',
                      colorFilter: .mode(mapPinColor, .srcIn),
                    ),
                    const SizedBox(width: 2),
                    Text(
                      surah.place.name,
                      style: textBodyMedium.copyWith(color: secondaryColor),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Column(
            spacing: 2,
            mainAxisAlignment: .center,
            crossAxisAlignment: .end,
            children: [
              Text(
                '${surah.quantity} аятов',
                style: textBodyMedium.copyWith(
                  color: secondaryColor.withValues(alpha: .8),
                ),
              ),
              Text(
                'Джуз: ${surah.djuz}',
                style: textBodyMedium.copyWith(
                  color: secondaryColor.withValues(alpha: .8),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

// @Preview(group: 'SurahItem', name: 'Light')
// Widget previewLight() => sizedWrapper(
//   const SurahItem(
//     theme: .light,
//     item: .new(
//       .new(1),
//       .new('Аль-Фатиха'),
//       .new('Открывающая'),
//       .mekkah,
//       .new(7),
//       .new('1'),
//     ),
//   ),
//   width: 400,
// );

// @Preview(group: 'SurahItem', name: 'Light Long')
// Widget previewLightLong() => sizedWrapper(
//   const SurahItem(
//     theme: .light,
//     item: .new(
//       .new(2),
//       .new('Аль-Бакара Аль-Бакара Аль-Бакара'),
//       .new('Корова Корова Корова'),
//       .madinah,
//       .new(286),
//       .new('1-3'),
//     ),
//   ),
//   width: 400,
// );
