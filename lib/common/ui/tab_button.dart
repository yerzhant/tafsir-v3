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

  final VoidCallback onTap;
  final AppTheme theme;
  final bool isActive;
  final String title;

  @override
  Widget build(BuildContext context) {
    final gradient = switch (theme) {
      .light || .dark => gradiendPrimaryBlue,
      .brownLight || .brownDark => gradiendPrimaryBrown,
    };

    return Expanded(
      child: InkWell(
        onTap: onTap,
        borderRadius: .circular(199),
        child: Container(
          padding: const .symmetric(horizontal: 10, vertical: 6),
          decoration: BoxDecoration(
            gradient: isActive ? gradient : null,
            borderRadius: .circular(199),
          ),
          child: Center(
            child: Text(
              title,
              style: textBodyReg.copyWith(
                color: isActive
                    ? typographyTextWhite
                    : typographySecondary(theme),
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
