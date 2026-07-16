import 'package:flutter/material.dart';
import 'package:tafsir/common/ui/app_theme.dart';

class DoNotForgetUsWidget extends StatelessWidget {
  const DoNotForgetUsWidget({super.key, required this.theme});

  final AppTheme theme;

  @override
  Widget build(BuildContext context) {
    final bgColor = switch (theme) {
      .light => brandSecondaryLight,
      .dark => brandSecondaryDark,
      .brownLight => brandSecondaryBrownLight,
      .brownDark => brandSecondaryBrownDark,
    };

    return Container(
      padding: const .symmetric(vertical: 13),
      decoration: BoxDecoration(
        borderRadius: .circular(12),
        color: bgColor,
      ),
      child: Center(
        child: Text(
          'Не забывайте о нас в своих дуа!',
          style: textBodyLarge.copyWith(color: typographyTextWhite),
        ),
      ),
    );
  }
}

// @Preview(group: 'AboutButton', name: 'Light')
// Widget previewLight() => sizedWrapper(
//   const DoNotForgetUsWidget(theme: .light),
//   width: 400,
// );
