import 'package:flutter/material.dart';
import 'package:tafsir/common/ui/app_theme.dart';

class AppCard extends StatelessWidget {
  const AppCard({
    super.key,
    required this.child,
    required this.theme,
    this.horizontalPadding = 12,
    this.verticalPadding = 12,
  });

  final Widget child;
  final AppTheme theme;
  final double horizontalPadding;
  final double verticalPadding;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: .symmetric(
        horizontal: horizontalPadding,
        vertical: verticalPadding,
      ),
      decoration: BoxDecoration(
        color: bgSecondary(theme),
        borderRadius: .circular(16),
        boxShadow: const [
          .new(
            blurRadius: 4,
            offset: .new(0, 2),
            color: Color(0x14A0A0A0),
            blurStyle: .outer,
          ),
        ],
      ),
      child: Center(child: child),
    );
  }
}

// @Preview(group: 'AppCard', name: 'Light')
// Widget previewLight() => sizedWrapper(
//   const AppCard(theme: .light, child: Placeholder()),
//   color: bgPrimaryLight,
// );

// @Preview(group: 'AppCard', name: 'Dark')
// Widget previewDark() => sizedWrapper(
//   const AppCard(theme: .dark, child: Placeholder()),
//   color: bgPrimaryDark,
// );

// @Preview(group: 'AppCard', name: 'Brown Light')
// Widget previewBrownLight() => sizedWrapper(
//   const AppCard(theme: .brownLight, child: Placeholder()),
//   color: bgPrimaryBrownLight,
// );

// @Preview(group: 'AppCard', name: 'Brown Dark')
// Widget previewBrownDark() => sizedWrapper(
//   const AppCard(theme: .brownDark, child: Placeholder()),
//   color: bgPrimaryBrownDark,
// );
