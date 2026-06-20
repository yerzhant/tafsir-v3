import 'package:flutter/material.dart';
import 'package:flutter/widget_previews.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:tafsir/common/ui/app_theme.dart';
import 'package:tafsir/common/ui/big_frame.dart';
import 'package:tafsir/common/ui/circle_card.dart';
import 'package:tafsir/common/ui/preview.dart';
import 'package:tafsir/main/domain/types.dart';

enum InfoListItemType { book, azanRu, basmalah }

class InfoListItem extends StatelessWidget {
  const InfoListItem({
    super.key,
    required this.theme,
    required this.type,
    required this.name,
  });

  final AppTheme theme;
  final InfoListItemType type;
  final InfoName name;

  @override
  Widget build(BuildContext context) {
    final icon = switch (type) {
      .book => 'book',
      .azanRu => 'azan.ru',
      .basmalah => 'basmalah',
    };

    final iconColor = switch (theme) {
      AppTheme.light => brandPrimaryLight,
      AppTheme.dark => brandPrimaryDark,
      AppTheme.brownLight => brandPrimaryBrownLight,
      AppTheme.brownDark => brandPrimaryBrownDark,
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
          Text(name, style: textCallout.copyWith(color: primaryColor)),
        ],
      ),
    );
  }
}

@Preview(group: 'InfoListItem', name: 'Light Book')
Widget previewLightBook() => sizedWrapper(
  const InfoListItem(
    type: .book,
    theme: .light,
    name: .new('О священном Коране'),
  ),
  width: 400,
);

@Preview(group: 'InfoListItem', name: 'Dark Book')
Widget previewDarkBook() => sizedWrapper(
  const InfoListItem(
    type: .book,
    theme: .dark,
    name: .new('О священном Коране'),
  ),
  width: 400,
  color: bgPrimaryDark,
);

@Preview(group: 'InfoListItem', name: 'Brown Light Book')
Widget previewBrownLightBook() => sizedWrapper(
  const InfoListItem(
    type: .book,
    theme: .brownLight,
    name: .new('О священном Коране'),
  ),
  width: 400,
  color: bgPrimaryBrownLight,
);

@Preview(group: 'InfoListItem', name: 'Brown Dark Book')
Widget previewBrownDarkBook() => sizedWrapper(
  const InfoListItem(
    type: .book,
    theme: .brownDark,
    name: .new('О священном Коране'),
  ),
  width: 400,
  color: bgPrimaryBrownDark,
);

@Preview(group: 'InfoListItem', name: 'Light Azan.Ru')
Widget previewLightAzanRu() => sizedWrapper(
  const InfoListItem(type: .azanRu, theme: .light, name: .new('Предисловие')),
  width: 400,
);

@Preview(group: 'InfoListItem', name: 'Light Basmalah')
Widget previewLightBasmalah() => sizedWrapper(
  const InfoListItem(
    type: .basmalah,
    theme: .light,
    name: .new('Истиаза и Басмала'),
  ),
  width: 400,
);
