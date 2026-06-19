import 'package:flutter/material.dart';
import 'package:flutter/widget_previews.dart';
import 'package:tafsir/common/ui/app_theme.dart';
import 'package:tafsir/common/ui/preview.dart';

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
      padding: .all(12),
      decoration: BoxDecoration(
        border: .all(color: borderColor),
        borderRadius: .circular(16),
      ),
      child: child,
    );
  }
}

@Preview(group: 'BigFrame', name: 'Light', wrapper: sizedWrapper)
Widget previewLight() => const BigFrame(theme: .light, child: Placeholder());
