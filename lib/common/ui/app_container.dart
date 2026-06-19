import 'package:flutter/material.dart';
import 'package:flutter/widget_previews.dart';
import 'package:tafsir/common/ui/app_theme.dart';
import 'package:tafsir/common/ui/preview.dart';

class AppContainer extends StatelessWidget {
  const AppContainer({super.key, required this.theme, required this.child});

  final AppTheme theme;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    final bgColor = switch (theme) {
      .light => bgPrimaryLight,
      .dark => bgPrimaryDark,
      .brownLight => bgPrimaryBrownLight,
      .brownDark => bgPrimaryBrownDark,
    };

    return Container(
      clipBehavior: .hardEdge,
      decoration: BoxDecoration(
        color: bgColor,
        borderRadius: .only(topRight: .circular(30), topLeft: .circular(30)),
      ),
      child: child,
    );
  }
}

@Preview(group: 'AppContainer', name: 'Light')
Widget previewLight() => sizedWrapper(
  const AppContainer(theme: .light, child: Placeholder()),
  color: Colors.blue,
);
