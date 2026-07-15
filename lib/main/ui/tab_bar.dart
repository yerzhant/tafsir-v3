import 'package:flutter/material.dart';
import 'package:flutter/widget_previews.dart';
import 'package:tafsir/common/ui/app_theme.dart';
import 'package:tafsir/common/ui/masjid.dart';
import 'package:tafsir/common/ui/tab_button.dart';

class TabBar extends StatelessWidget {
  const TabBar({super.key, required this.theme});

  final AppTheme theme;

  @override
  Widget build(BuildContext context) {
    final bgColor = switch (theme) {
      .light => bgTertiraryLight,
      .dark => bgTertiraryDark,
      .brownLight => bgTertiraryBrownLight,
      .brownDark => bgTertiraryBrownDark,
    };

    return Padding(
      padding: const .only(right: 20, left: 20, bottom: 10),
      child: ClipRRect(
        borderRadius: .circular(100),
        child: BackdropFilter(
          filter: .blur(sigmaX: 20, sigmaY: 20),
          child: Container(
            decoration: BoxDecoration(borderRadius: .circular(100), color: bgColor),
            child: Padding(
              padding: const .all(4),
              child: Row(
                spacing: 4,
                mainAxisAlignment: .spaceEvenly,
                children: [
                  TabButton(theme: theme, title: 'Суры', isActive: true),
                  TabButton(theme: theme, title: 'Джуз'),
                  TabButton(theme: theme, title: 'Закладки'),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

@Preview(group: 'TabBar', size: .new(400, 500), name: 'Light')
Widget previewLight() => const Masjid(
  theme: .light,
  child: Column(
    mainAxisAlignment: .center,
    children: [TabBar(theme: .light)],
  ),
);
