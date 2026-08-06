import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:tafsir/common/ui/app_theme.dart';
import 'package:tafsir/common/ui/big_frame.dart';
import 'package:tafsir/common/ui/circle_card.dart';
import 'package:tafsir/main/domain/muqaddim.dart';

class MuqaddimItem extends StatelessWidget {
  const MuqaddimItem({
    super.key,
    required this.theme,
    required this.muqaddim,
  });

  final AppTheme theme;
  final Muqaddim muqaddim;

  @override
  Widget build(BuildContext context) {
    final icon = switch (muqaddim.type) {
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
          Text(
            muqaddim.content,
            style: textCallout.copyWith(color: primaryColor),
          ),
        ],
      ),
    );
  }
}

// @Preview(group: 'MuqaddimItem', name: 'Light Book')
// Widget previewLightBook() => sizedWrapper(
//   const MuqaddimItem(
//     theme: .light,
//     item: .new(.book, .new('О священном Коране')),
//   ),
//   width: 400,
// );

// @Preview(group: 'MuqaddimItem', name: 'Dark Book')
// Widget previewDarkBook() => sizedWrapper(
//   const MuqaddimItem(
//     theme: .dark,
//     item: .new(.book, .new('О священном Коране')),
//   ),
//   width: 400,
//   color: bgPrimaryDark,
// );

// @Preview(group: 'MuqaddimItem', name: 'Brown Light Book')
// Widget previewBrownLightBook() => sizedWrapper(
//   const MuqaddimItem(
//     theme: .brownLight,
//     item: .new(.book, .new('О священном Коране')),
//   ),
//   width: 400,
//   color: bgPrimaryBrownLight,
// );

// @Preview(group: 'MuqaddimItem', name: 'Brown Dark Book')
// Widget previewBrownDarkBook() => sizedWrapper(
//   const MuqaddimItem(
//     theme: .brownDark,
//     item: .new(.book, .new('О священном Коране')),
//   ),
//   width: 400,
//   color: bgPrimaryBrownDark,
// );

// @Preview(group: 'MuqaddimItem', name: 'Light Azan.Ru')
// Widget previewLightAzanRu() => sizedWrapper(
//   const MuqaddimItem(theme: .light, item: .new(.azanRu, .new('Предисловие'))),
//   width: 400,
// );

// @Preview(group: 'MuqaddimItem', name: 'Light Basmalah')
// Widget previewLightBasmalah() => sizedWrapper(
//   const MuqaddimItem(
//     theme: .light,
//     item: .new(.basmalah, .new('Истиаза и Басмала')),
//   ),
//   width: 400,
// );
