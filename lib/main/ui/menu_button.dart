import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:tafsir/common/ui/app_theme.dart';
import 'package:tafsir/main/domain/menu.dart';

class MenuButton extends StatelessWidget {
  const MenuButton({
    super.key,
    required this.theme,
    required this.menu,
  });

  final AppTheme theme;
  final Menu menu;

  @override
  Widget build(BuildContext context) {
    final iconColor = switch (theme) {
      .light => brandPrimaryLight,
      .dark => brandPrimaryDark,
      .brownLight => brandPrimaryBrownLight,
      .brownDark => brandPrimaryBrownDark,
    };

    final textColor = switch (theme) {
      .light => typographyPrimaryLight,
      .dark => typographyPrimaryDark,
      .brownLight => typographyPrimaryBrownLight,
      .brownDark => typographyPrimaryBrownDark,
    };

    final bgColor = switch (theme) {
      .light => bgSecondaryLight,
      .dark => bgSecondaryDark,
      .brownLight => bgSecondaryBrownLight,
      .brownDark => bgSecondaryBrownDark,
    };

    return Container(
      padding: const .all(12),
      decoration: BoxDecoration(
        borderRadius: .circular(12),
        color: bgColor,
      ),
      child: Row(
        spacing: 8,
        children: [
          SvgPicture.asset(
            'assets/icons/${menu.icon}.svg',
            colorFilter: .mode(iconColor, .srcIn),
          ),
          Text(
            menu.title,
            style: textBodyReg.copyWith(color: textColor),
          ),
        ],
      ),
    );
  }
}

// @Preview(group: 'MenuButton', name: 'Light')
// Widget previewLight() => sizedWrapper(
//   const MenuButton(
//     theme: .light,
//     item: .howToUse,
//   ),
// );

// @Preview(group: 'MenuButton', name: 'Dark')
// Widget previewDark() => sizedWrapper(
//   color: bgPrimaryDark,
//   const MenuButton(
//     theme: .dark,
//     item: .howToUse,
//   ),
// );

// @Preview(group: 'MenuButton', name: 'Brown Dark')
// Widget previewBrownDark() => sizedWrapper(
//   color: bgPrimaryBrownDark,
//   const MenuButton(
//     theme: .brownDark,
//     item: .howToUse,
//   ),
// );
