import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:tafsir/common/ui/app_theme.dart';
import 'package:tafsir/common/ui/big_frame.dart';
import 'package:tafsir/common/ui/circle_card.dart';
import 'package:tafsir/main/domain/muqaddimah.dart';

class MuqaddimahItem extends StatelessWidget {
  const MuqaddimahItem({
    super.key,
    required this.theme,
    required this.muqaddimah,
  });

  final AppTheme theme;
  final Muqaddimah muqaddimah;

  @override
  Widget build(BuildContext context) {
    final icon = switch (muqaddimah.type) {
      .book => 'book',
      .azanRu => 'azan.ru',
      .basmalah => 'basmalah',
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
              colorFilter: .mode(brandPrimary(theme), .srcIn),
            ),
          ),
          Text(
            muqaddimah.title,
            style: textCallout.copyWith(color: typographyPrimary(theme)),
          ),
        ],
      ),
    );
  }
}

// @Preview(group: 'MuqaddimahItem', name: 'Light Book')
// Widget previewLightBook() => sizedWrapper(
//   const MuqaddimahItem(
//     theme: .light,
//     item: .new(.book, .new('О священном Коране')),
//   ),
//   width: 400,
// );

// @Preview(group: 'MuqaddimahItem', name: 'Dark Book')
// Widget previewDarkBook() => sizedWrapper(
//   const MuqaddimahItem(
//     theme: .dark,
//     item: .new(.book, .new('О священном Коране')),
//   ),
//   width: 400,
//   color: bgPrimaryDark,
// );

// @Preview(group: 'MuqaddimahItem', name: 'Brown Light Book')
// Widget previewBrownLightBook() => sizedWrapper(
//   const MuqaddimahItem(
//     theme: .brownLight,
//     item: .new(.book, .new('О священном Коране')),
//   ),
//   width: 400,
//   color: bgPrimaryBrownLight,
// );

// @Preview(group: 'MuqaddimahItem', name: 'Brown Dark Book')
// Widget previewBrownDarkBook() => sizedWrapper(
//   const MuqaddimahItem(
//     theme: .brownDark,
//     item: .new(.book, .new('О священном Коране')),
//   ),
//   width: 400,
//   color: bgPrimaryBrownDark,
// );

// @Preview(group: 'MuqaddimahItem', name: 'Light Azan.Ru')
// Widget previewLightAzanRu() => sizedWrapper(
//   const MuqaddimahItem(theme: .light, item: .new(.azanRu, .new('Предисловие'))),
//   width: 400,
// );

// @Preview(group: 'MuqaddimahItem', name: 'Light Basmalah')
// Widget previewLightBasmalah() => sizedWrapper(
//   const MuqaddimahItem(
//     theme: .light,
//     item: .new(.basmalah, .new('Истиаза и Басмала')),
//   ),
//   width: 400,
// );
