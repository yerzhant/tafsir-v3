import 'package:flutter/material.dart';
import 'package:flutter/widget_previews.dart';
import 'package:flutter/widgets.dart';
import 'package:tafsir/common/ui/app_theme.dart';
import 'package:tafsir/common/ui/preview.dart';

enum EllipseSize { small, normal }

class Ellipse extends StatelessWidget {
  const Ellipse({
    super.key,
    this.size = .normal,
    required this.theme,
    required this.child,
  });

  final AppTheme theme;
  final EllipseSize size;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    final diameter = switch (size) {
      .small => 34.0,
      .normal => 38.0,
    };

    final bgColor = switch (theme) {
      .light => bgTertiraryLight,
      .dark => bgTertiraryDark,
      .brownLight => bgTertiraryBrownLight,
      .brownDark => bgTertiraryBrownDark,
    };

    return Container(
      width: diameter,
      height: diameter,
      decoration: BoxDecoration(
        color: bgColor,
        borderRadius: .circular(diameter / 2),
        boxShadow: const [
          .new(
            blurRadius: 12,
            offset: .new(0, 2),
            color: Color(0x14000000),
            blurStyle: .outer,
          ),
        ],
      ),
      child: Center(child: child),
    );
  }
}

@Preview(group: 'Ellipse', name: 'Light Normal', wrapper: wrapper)
Widget previewLightNormal() => const Ellipse(theme: .light, child: Text('1'));

@Preview(group: 'Ellipse', name: 'Light Small', wrapper: wrapper)
Widget previewLightSmall() =>
    const Ellipse(theme: .light, size: .small, child: Text('1'));
