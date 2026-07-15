import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:tafsir/common/ui/app_card.dart';
import 'package:tafsir/common/ui/app_theme.dart';
import 'package:tafsir/common/ui/circle_card.dart';
import 'package:tafsir/main/domain/djuz_item.dart';

class DjuzListItem extends StatelessWidget {
  const DjuzListItem({super.key, required this.theme, required this.item});

  final AppTheme theme;
  final DjuzItem item;

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
              '${item.number}',
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
                  '${item.from} → ${item.to}',
                  style: textCallout.copyWith(color: primaryColor),
                  overflow: .ellipsis,
                ),
                Row(
                  spacing: 2,
                  mainAxisSize: .min,
                  children: [
                    SvgPicture.asset(
                      'assets/icons/map-pin.svg',
                      colorFilter: .mode(mapPinColor, .srcIn),
                    ),
                    Text(
                      item.place.name,
                      style: textBodyMedium.copyWith(color: secondaryColor),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

// @Preview(group: 'DjuzListItem', name: 'Light')
// Widget previewLight() => sizedWrapper(
//   const DjuzListItem(
//     theme: .light,
//     item: .new(
//       .new(1),
//       .new('Аль-Фатиха'),
//       .new('Аль-Бакара'),
//       .mekkah,
//     ),
//   ),
//   width: 400,
// );

// @Preview(group: 'DjuzListItem', name: 'Light Long')
// Widget previewLightLong() => sizedWrapper(
//   const DjuzListItem(
//     theme: .light,
//     item: .new(
//       .new(1),
//       .new('Аль-Фатиха 7'),
//       .new('Аль-Бакара Аль-Бакара'),
//       .madinah,
//     ),
//   ),
//   width: 400,
// );
