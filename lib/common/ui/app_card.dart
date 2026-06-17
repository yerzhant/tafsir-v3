import 'package:flutter/material.dart';
import 'package:flutter/widget_previews.dart';
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
    final bgColor = switch (theme) {
      .light => bgSecondaryLight,
      .dark => bgSecondaryDark,
      .brownLight => bgSecondaryBrownLight,
      .brownDark => bgSecondaryBrownDark,
    };

    return Container(
      padding: .symmetric(
        horizontal: horizontalPadding,
        vertical: verticalPadding,
      ),
      decoration: BoxDecoration(
        color: bgColor,
        borderRadius: .circular(16),
        boxShadow: const [
          .new(blurRadius: 4, offset: .new(0, 2), color: Color(0x14A0A0A0)),
        ],
      ),
      child: Center(child: child),
    );
  }
}

final class AppCardPreview extends Preview {
  const AppCardPreview({super.name});

  @override
  Preview transform() {
    final builder = super.transform().toBuilder();
    builder.size = .new(400, 150);
    return builder.build();
  }
}

@AppCardPreview(name: 'light')
Widget previewLight() => Card(
  color: Colors.white,
  child: Padding(
    padding: const EdgeInsets.all(18.0),
    child: const AppCard(theme: .light, child: Placeholder()),
  ),
);

@AppCardPreview(name: 'dark')
Widget previewDark() => const AppCard(theme: .dark, child: Placeholder());

@AppCardPreview(name: 'brown light')
Widget previewBrownLight() =>
    const AppCard(theme: .brownLight, child: Placeholder());

@AppCardPreview(name: 'brown dark')
Widget previewBrownDark() =>
    const AppCard(theme: .brownDark, child: Placeholder());
