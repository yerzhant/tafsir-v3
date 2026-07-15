import 'package:flutter/material.dart';
import 'package:tafsir/common/ui/app_theme.dart';
import 'package:tafsir/main/domain/last_read.dart';

class LastReadListItem extends StatelessWidget {
  const LastReadListItem({
    super.key,
    required this.theme,
    required this.lastRead,
  });

  final AppTheme theme;
  final LastRead lastRead;

  @override
  Widget build(BuildContext context) {
    final textColor = switch (theme) {
      .light => typographySecondaryLight,
      .dark => typographySecondaryDark,
      .brownLight => typographySecondaryBrownLight,
      .brownDark => typographySecondaryBrownDark,
    };

    final bgColor = switch (theme) {
      .light => bgSecondaryLight,
      .dark => bgSecondaryDark,
      .brownLight => bgSecondaryBrownLight,
      .brownDark => bgSecondaryBrownDark,
    };

    final borderColor = switch (theme) {
      .light => borderPrimaryLight,
      .dark => borderPrimaryDark,
      .brownLight => borderPrimaryBrownLight,
      .brownDark => borderPrimaryBrownDark,
    };

    return Container(
      padding: const .all(10),
      decoration: BoxDecoration(
        color: bgColor,
        border: .all(color: borderColor),
        borderRadius: .circular(12),
      ),
      child: Center(
        child: Text(
          '${lastRead.surah} ${lastRead.surahNumber}:${lastRead.aayah}',
          style: textBodyMedium.copyWith(
            color: textColor.withValues(alpha: .8),
          ),
        ),
      ),
    );
  }
}

// @Preview(group: 'LastReadListItem', name: 'Light', wrapper: sizedWrapper)
// Widget previewLight() => const LastReadListItem(
//   theme: .light,
//   lastRead: .new(
//     .new('Al-Fatiha'),
//     .new(1),
//     .new(2),
//   ),
// );
