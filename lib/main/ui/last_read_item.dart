import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tafsir/aayaat/ui/surah_page.dart';
import 'package:tafsir/common/ui/app_theme.dart';
import 'package:tafsir/main/domain/last_read.dart';

class LastReadItem extends StatelessWidget {
  const LastReadItem({
    super.key,
    required this.theme,
    required this.lastRead,
  });

  final AppTheme theme;
  final LastRead lastRead;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => SurahPage.open(
        context,
        context.read(),
        lastRead.surahNumber,
        .new(
          lastRead.ayahPosition.number,
          lastRead.ayahPosition.alignment,
        ),
      ),
      child: Container(
        padding: const .symmetric(horizontal: 10),
        decoration: BoxDecoration(
          color: bgSecondary(theme),
          border: .all(color: borderPrimary(theme)),
          borderRadius: .circular(12),
        ),
        child: Center(
          child: Text(
            '${lastRead.surahName} ${lastRead.surahNumber}:${lastRead.ayahPosition.number}',
            style: textBodyMedium.copyWith(
              color: typographySecondary(theme).withValues(alpha: .8),
            ),
          ),
        ),
      ),
    );
  }
}

// @Preview(group: 'LastReadItem', name: 'Light', wrapper: sizedWrapper)
// Widget previewLight() => const LastReadItem(
//   theme: .light,
//   lastRead: .new(
//     .new('Al-Fatiha'),
//     .new(1),
//     .new(2),
//   ),
// );
