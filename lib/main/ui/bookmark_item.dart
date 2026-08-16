import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:tafsir/aayaat/ui/surah_page.dart';
import 'package:tafsir/common/ui/app_card.dart';
import 'package:tafsir/common/ui/app_theme.dart';
import 'package:tafsir/common/ui/circle_card.dart';
import 'package:tafsir/main/domain/bookmark.dart';
import 'package:tafsir/main/domain/surah.dart';

class BookmarkItem extends StatelessWidget {
  const BookmarkItem({
    super.key,
    required this.theme,
    required this.suwar,
    required this.bookmark,
  });

  final AppTheme theme;
  final Bookmark bookmark;
  final List<Surah> suwar;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => SurahPage.open(
        context,
        context.read(),
        suwar,
        bookmark.surahNumber,
        .new(bookmark.aayahNumber, 0),
      ),
      child: AppCard(
        theme: theme,
        child: Row(
          spacing: 8,
          children: [
            CircleCard(
              theme: theme,
              child: SvgPicture.asset(
                'assets/icons/bookmark.svg',
                colorFilter: .mode(brandPrimary(theme), .srcIn),
              ),
            ),
            Expanded(
              child: Column(
                spacing: 2,
                mainAxisAlignment: .center,
                crossAxisAlignment: .start,
                children: [
                  Text(
                    '${bookmark.surahNumber}. ${bookmark.surahName}',
                    style: textCallout.copyWith(
                      color: typographyPrimary(theme),
                    ),
                    overflow: .ellipsis,
                  ),
                  Text(
                    '${bookmark.aayahNumber} аят',
                    style: textBodyMedium.copyWith(
                      color: typographySecondary(theme),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// @Preview(group: 'BookmarkItem', name: 'Light')
// Widget previewLight() => sizedWrapper(
//   const BookmarkItem(
//     theme: .light,
//     bookmark: .new(.new(1), .new('Аль-Фатиха'), .new(1)),
//   ),
//   width: 400,
// );

// @Preview(group: 'BookmarkItem', name: 'Light Long')
// Widget previewLightLong() => sizedWrapper(
//   const BookmarkItem(
//     theme: .light,
//     bookmark: .new(.new(1), .new('Аль-Фатиха Аль-Фатиха Аль-Фатиха'), .new(1)),
//   ),
//   width: 400,
// );
