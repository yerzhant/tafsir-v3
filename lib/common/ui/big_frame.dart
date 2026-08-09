import 'package:flutter/material.dart';
import 'package:tafsir/common/ui/app_theme.dart';

class BigFrame extends StatelessWidget {
  const BigFrame({super.key, required this.theme, required this.child});

  final AppTheme theme;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const .all(12),
      decoration: BoxDecoration(
        border: .all(color: borderPrimary(theme)),
        borderRadius: .circular(16),
      ),
      child: child,
    );
  }
}

// @Preview(group: 'BigFrame', name: 'Light', wrapper: sizedWrapper)
// Widget previewLight() => const BigFrame(theme: .light, child: Placeholder());
