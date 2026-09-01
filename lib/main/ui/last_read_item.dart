import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tafsir/aayaat/ui/surah_page.dart';
import 'package:tafsir/common/ui/app_theme.dart';
import 'package:tafsir/main/domain/last_read.dart';
import 'package:tafsir/main/domain/surah.dart';

class LastReadItem extends StatelessWidget {
  const LastReadItem({
    super.key,
    required this.theme,
    required this.suwar,
    required this.lastRead,
  });

  final AppTheme theme;
  final LastRead lastRead;
  final List<Surah> suwar;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: .circular(12),
      onTap: () => SurahPage.open(
        context,
        context.read(),
        suwar,
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
