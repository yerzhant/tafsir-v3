import 'package:flutter/material.dart';
import 'package:flutter/widget_previews.dart';
import 'package:tafsir/common/ui/app_theme.dart';

class Masjid extends StatelessWidget {
  const Masjid({super.key, required this.theme, required this.child});

  final AppTheme theme;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    final color = switch (theme) {
      .light => brandPrimaryLight,
      .dark => bgPrimaryDark,
      .brownLight => bgPrimaryBrownLight,
      .brownDark => bgPrimaryBrownDark,
    };

    final blendMode = switch (theme) {
      .light => BlendMode.overlay,
      .dark => BlendMode.hardLight,
      .brownLight => BlendMode.hardLight,
      .brownDark => BlendMode.hardLight,
    };

    return Stack(
      children: [
        Container(
          foregroundDecoration: BoxDecoration(
            color: color,
            backgroundBlendMode: blendMode,
          ),
          decoration: const BoxDecoration(
            image: .new(
              image: AssetImage('assets/images/masjid.png'),
              alignment: .topCenter,
            ),
          ),
        ),
        child,
      ],
    );
  }
}

@Preview(group: 'Masjid', name: 'Light', size: .new(200, 300))
Widget previewLight() => const Masjid(theme: .light, child: Placeholder());

@Preview(group: 'Masjid', name: 'Dark', size: .new(200, 300))
Widget previewDark() => const Masjid(theme: .dark, child: Placeholder());

@Preview(group: 'Masjid', name: 'Brown Light', size: .new(200, 300))
Widget previewBrownLight() =>
    const Masjid(theme: .brownLight, child: Placeholder());

@Preview(group: 'Masjid', name: 'Brown Dark', size: .new(200, 300))
Widget previewBrownDark() =>
    const Masjid(theme: .brownDark, child: Placeholder());
