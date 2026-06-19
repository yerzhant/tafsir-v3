import 'package:flutter/material.dart';
import 'package:flutter/widget_previews.dart';
import 'package:tafsir/common/ui/app_theme.dart';

class AppTab extends StatelessWidget {
  const AppTab({
    super.key,
    required this.theme,
    required this.title,
    this.isActive = false,
  });

  final AppTheme theme;
  final bool isActive;
  final String title;

  @override
  Widget build(BuildContext context) {
    final titleInactiveColor = switch (theme) {
      .light => typographySecondaryLight,
      .dark => typographySecondaryDark,
      .brownLight => typographySecondaryBrownLight,
      .brownDark => typographySecondaryBrownDark,
    };

    final gradient = switch (theme) {
      .light || .dark => gradiendPrimaryBlue,
      .brownLight || .brownDark => gradiendPrimaryBrown,
    };

    return Container(
      decoration: BoxDecoration(
        gradient: isActive ? gradient : null,
        borderRadius: .circular(199),
      ),
      child: Center(
        child: Text(
          title,
          style: textBodyReg.copyWith(
            color: isActive ? typographyTextWhite : titleInactiveColor,
          ),
        ),
      ),
    );
  }
}

@Preview(group: 'AppTab', name: 'Light Active', size: .new(100, 30))
Widget previewLightActive() =>
    const AppTab(theme: .light, title: 'Title', isActive: true);

@Preview(group: 'AppTab', name: 'Brown Light Active', size: .new(100, 30))
Widget previewBrownLightActive() =>
    const AppTab(theme: .brownLight, title: 'Title', isActive: true);

@Preview(group: 'AppTab', name: 'Light', size: .new(100, 30))
Widget previewLight() => const AppTab(theme: .light, title: 'Title');
