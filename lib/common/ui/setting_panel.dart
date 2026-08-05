import 'package:flutter/material.dart';
import 'package:tafsir/common/ui/app_theme.dart';

class SettingPanel extends StatelessWidget {
  const SettingPanel({
    super.key,
    required this.theme,
    required this.child,
    this.radius = 12,
    this.padding = 12,
    this.active = false,
  });

  final AppTheme theme;
  final Widget child;
  final double radius;
  final double padding;
  final bool active;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: .all(padding),
      decoration: BoxDecoration(
        borderRadius: .circular(radius),
        border: active ? .all(color: typographyLink(theme)) : null,
        color: active ? brandWhite : bgSecondary(theme),
      ),
      child: child,
    );
  }
}
