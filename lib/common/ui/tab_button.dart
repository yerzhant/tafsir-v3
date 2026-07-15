import 'package:flutter/material.dart';
import 'package:tafsir/common/ui/app_theme.dart';

class TabButton extends StatelessWidget {
  const TabButton({
    super.key,
    required this.theme,
    required this.title,
    required this.onTap,
    this.isActive = false,
  });

  final AppTheme theme;
  final bool isActive;
  final String title;
  final VoidCallback onTap;

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

    return Expanded(
      child: GestureDetector(
        onTap: onTap,
        child: Container(
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
        ),
      ),
    );
  }
}

// @Preview(group: 'TabButton', name: 'Light Active', size: .new(100, 30))
// Widget previewLightActive() =>
//     const TabButton(theme: .light, title: 'Title', isActive: true);

// @Preview(group: 'TabButton', name: 'Brown Light Active', size: .new(100, 30))
// Widget previewBrownLightActive() =>
//     const TabButton(theme: .brownLight, title: 'Title', isActive: true);

// @Preview(group: 'TabButton', name: 'Light', size: .new(100, 30))
// Widget previewLight() => const TabButton(theme: .light, title: 'Title');
