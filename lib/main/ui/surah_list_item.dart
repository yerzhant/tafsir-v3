import 'package:flutter/material.dart';
import 'package:flutter/widget_previews.dart';
import 'package:flutter_svg/svg.dart';
import 'package:tafsir/common/ui/app_card.dart';
import 'package:tafsir/common/ui/app_theme.dart';
import 'package:tafsir/common/ui/circle_card.dart';
import 'package:tafsir/common/ui/preview.dart';
import 'package:tafsir/main/domain/types.dart';

class SurahListItem extends StatelessWidget {
  const SurahListItem({
    super.key,
    required this.theme,
    required this.number,
    required this.name,
    required this.translation,
    required this.place,
    required this.quantity,
    required this.djuz,
  });

  final AppTheme theme;
  final SurahNumber number;
  final SurahName name;
  final SurahTranslation translation;
  final SurahPlace place;
  final AayahQuantity quantity;
  final Djuz djuz;

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

    return AppCard(
      theme: theme,
      child: Row(
        spacing: 8,
        children: [
          CircleCard(
            theme: theme,
            child: Text(
              number,
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
                  name,
                  overflow: .ellipsis,
                  style: textCallout.copyWith(color: primaryColor),
                ),
                Row(
                  children: [
                    Expanded(
                      child: Text(
                        translation,
                        overflow: .ellipsis,
                        style: textBodyMedium.copyWith(color: secondaryColor),
                      ),
                    ),
                    SizedBox(width: 4),
                    Container(
                      width: 4,
                      height: 4,
                      decoration: BoxDecoration(color: dotColor, shape: .circle),
                    ),
                    SizedBox(width: 4),
                    SvgPicture.asset('assets/icons/map-pin.svg'),
                    SizedBox(width: 2),
                    Text(
                      place.name,
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
                '$quantity аятов',
                style: textBodyMedium.copyWith(
                  color: secondaryColor.withValues(alpha: .8),
                ),
              ),
              Text(
                'Джуз: $djuz',
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
    number: .new('1'),
    name: .new('Аль-Фатиха'),
    translation: .new('Открывающая'),
    place: .mekkah,
    quantity: .new(7),
    djuz: .new('1'),
  ),
  width: 400,
);

@Preview(group: 'SurahListItem', name: 'Light Long')
Widget previewLightLong() => sizedWrapper(
  const SurahListItem(
    theme: .light,
    number: .new('2'),
    name: .new('Аль-Бакара Аль-Бакара Аль-Бакара'),
    translation: .new('Корова Корова Корова'),
    place: .madinah,
    quantity: .new(286),
    djuz: .new('1-3'),
  ),
  width: 400,
);
