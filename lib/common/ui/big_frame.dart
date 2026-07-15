import 'package:flutter/material.dart';
import 'package:tafsir/common/ui/app_theme.dart';

class BigFrame extends StatelessWidget {
  const BigFrame({super.key, required this.theme, required this.child});

  final AppTheme theme;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    final borderColor = switch (theme) {
      .light => borderPrimaryLight,
      .dark => borderPrimaryDark,
      .brownLight => borderPrimaryBrownLight,
      .brownDark => borderPrimaryBrownDark,
    };

    return Container(
      padding: const .all(12),
      decoration: BoxDecoration(
        border: .all(color: borderColor),
        borderRadius: .circular(16),
      ),
      child: child,
    );
  }
}

// @Preview(group: 'BigFrame', name: 'Light', wrapper: sizedWrapper)
// Widget previewLight() => const BigFrame(theme: .light, child: Placeholder());
