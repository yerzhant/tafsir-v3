import 'package:flutter/material.dart';
import 'package:tafsir/about_us/ui/icon_panel.dart';
import 'package:tafsir/common/ui/app_card.dart';
import 'package:tafsir/common/ui/app_theme.dart';

class AboutButton extends StatelessWidget {
  const AboutButton({
    super.key,
    required this.theme,
    required this.title,
    required this.icon,
    required this.onTap,
  });

  final AppTheme theme;
  final String title;
  final String icon;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: AppCard(
        theme: theme,
        horizontalPadding: 16,
        child: Row(
          spacing: 12,
          children: [
            IconPanel(theme: theme, icon: icon),
            Text(
              title,
              overflow: .ellipsis,
              style: textBodyReg.copyWith(color: typographyPrimary(theme)),
            ),
          ],
        ),
      ),
    );
  }
}

// @Preview(group: 'AboutButton', name: 'Light')
// Widget previewLight() => sizedWrapper(
//   Column(
//     children: [
//       AboutButton(
//         theme: .light,
//         title: 'Title',
//         icon: 'share',
//         onTap: () {},
//       ),
//     ],
//   ),
//   width: 400,
// );
