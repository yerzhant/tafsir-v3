import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:tafsir/common/ui/app_theme.dart';
import 'package:tafsir/common/ui/big_frame.dart';
import 'package:tafsir/common/ui/circle_card.dart';
import 'package:tafsir/main/domain/info_item.dart';

class InfoListItem extends StatelessWidget {
  const InfoListItem({super.key, required this.theme, required this.item});

  final AppTheme theme;
  final InfoItem item;

  @override
  Widget build(BuildContext context) {
    final icon = switch (item.type) {
      .book => 'book',
      .azanRu => 'azan.ru',
      .basmalah => 'basmalah',
    };

    final iconColor = switch (theme) {
      .light => brandPrimaryLight,
      .dark => brandPrimaryDark,
      .brownLight => brandPrimaryBrownLight,
      .brownDark => brandPrimaryBrownDark,
    };

    final primaryColor = switch (theme) {
      .light => typographyPrimaryLight,
      .dark => typographyPrimaryDark,
      .brownLight => typographyPrimaryBrownLight,
      .brownDark => typographyPrimaryBrownDark,
    };

    return BigFrame(
      theme: theme,
      child: Row(
        spacing: 12,
        children: [
          CircleCard(
            theme: theme,
            size: .small,
            child: SvgPicture.asset(
              'assets/icons/$icon.svg',
              colorFilter: .mode(iconColor, .srcIn),
            ),
          ),
          Text(item.name, style: textCallout.copyWith(color: primaryColor)),
        ],
      ),
    );
  }
}

// @Preview(group: 'InfoListItem', name: 'Light Book')
// Widget previewLightBook() => sizedWrapper(
//   const InfoListItem(
//     theme: .light,
//     item: .new(.book, .new('О священном Коране')),
//   ),
//   width: 400,
// );

// @Preview(group: 'InfoListItem', name: 'Dark Book')
// Widget previewDarkBook() => sizedWrapper(
//   const InfoListItem(
//     theme: .dark,
//     item: .new(.book, .new('О священном Коране')),
//   ),
//   width: 400,
//   color: bgPrimaryDark,
// );

// @Preview(group: 'InfoListItem', name: 'Brown Light Book')
// Widget previewBrownLightBook() => sizedWrapper(
//   const InfoListItem(
//     theme: .brownLight,
//     item: .new(.book, .new('О священном Коране')),
//   ),
//   width: 400,
//   color: bgPrimaryBrownLight,
// );

// @Preview(group: 'InfoListItem', name: 'Brown Dark Book')
// Widget previewBrownDarkBook() => sizedWrapper(
//   const InfoListItem(
//     theme: .brownDark,
//     item: .new(.book, .new('О священном Коране')),
//   ),
//   width: 400,
//   color: bgPrimaryBrownDark,
// );

// @Preview(group: 'InfoListItem', name: 'Light Azan.Ru')
// Widget previewLightAzanRu() => sizedWrapper(
//   const InfoListItem(theme: .light, item: .new(.azanRu, .new('Предисловие'))),
//   width: 400,
// );

// @Preview(group: 'InfoListItem', name: 'Light Basmalah')
// Widget previewLightBasmalah() => sizedWrapper(
//   const InfoListItem(
//     theme: .light,
//     item: .new(.basmalah, .new('Истиаза и Басмала')),
//   ),
//   width: 400,
// );
