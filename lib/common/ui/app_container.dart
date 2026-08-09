import 'package:flutter/material.dart';
import 'package:tafsir/common/ui/app_theme.dart';

class AppContainer extends StatelessWidget {
  const AppContainer({super.key, required this.theme, required this.child});

  final AppTheme theme;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Container(
      clipBehavior: .hardEdge,
      decoration: BoxDecoration(
        color: bgPrimary(theme),
        borderRadius: const .only(
          topRight: .circular(30),
          topLeft: .circular(30),
        ),
      ),
      child: child,
    );
  }
}

// @Preview(group: 'AppContainer', name: 'Light')
// Widget previewLight() => sizedWrapper(
//   const AppContainer(theme: .light, child: Placeholder()),
//   color: Colors.blue,
// );
