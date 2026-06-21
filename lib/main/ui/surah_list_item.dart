import 'package:flutter/material.dart';
import 'package:flutter/widget_previews.dart';
import 'package:flutter_svg/svg.dart';
import 'package:tafsir/common/ui/app_card.dart';
import 'package:tafsir/common/ui/app_theme.dart';
import 'package:tafsir/common/ui/circle_card.dart';
import 'package:tafsir/common/ui/preview.dart';
import 'package:tafsir/main/domain/surah_item.dart';

class SurahListItem extends StatelessWidget {
  const SurahListItem({super.key, required this.theme, required this.item});

  final AppTheme theme;
  final SurahItem item;

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
              item.number,
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
                  item.name,
                  overflow: .ellipsis,
                  style: textCallout.copyWith(color: primaryColor),
                ),
                Row(
                  children: [
                    Flexible(
                      child: Text(
                        item.translation,
                        overflow: .ellipsis,
                        style: textBodyMedium.copyWith(color: secondaryColor),
                      ),
                    ),
                    SizedBox(width: 4),
                    Container(
                      width: 4,
                      height: 4,
                      decoration: BoxDecoration(
                        color: dotColor,
                        shape: .circle,
                      ),
                    ),
                    SizedBox(width: 4),
                    SvgPicture.asset(
                      'assets/icons/map-pin.svg',
                      colorFilter: .mode(mapPinColor, .srcIn),
                    ),
                    SizedBox(width: 2),
                    Text(
                      item.place.name,
                      style: textBodyMedium.copyWith(color: secondaryColor),
                    ),
                  ],
                ),
              ],
            ),
          ),
          // Spacer(),
          Column(
            spacing: 2,
            mainAxisAlignment: .center,
            crossAxisAlignment: .end,
            children: [
              Text(
                '${item.quantity} аятов',
                style: textBodyMedium.copyWith(
                  color: secondaryColor.withValues(alpha: .8),
                ),
              ),
              Text(
                'Джуз: ${item.djuz}',
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

@Preview(group: 'SurahListItem', name: 'Light')
Widget previewLight() => sizedWrapper(
  const SurahListItem(
    theme: .light,
    item: .new(
      .new('1'),
      .new('Аль-Фатиха'),
      .new('Открывающая'),
      .mekkah,
      .new(7),
      .new('1'),
    ),
  ),
  width: 400,
);

@Preview(group: 'SurahListItem', name: 'Light Long')
Widget previewLightLong() => sizedWrapper(
  const SurahListItem(
    theme: .light,
    item: .new(
      .new('2'),
      .new('Аль-Бакара Аль-Бакара Аль-Бакара'),
      .new('Корова Корова Корова'),
      .madinah,
      .new(286),
      .new('1-3'),
    ),
  ),
  width: 400,
);
