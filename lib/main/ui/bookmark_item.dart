import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:tafsir/common/ui/app_card.dart';
import 'package:tafsir/common/ui/app_theme.dart';
import 'package:tafsir/common/ui/circle_card.dart';
import 'package:tafsir/main/domain/bookmark.dart';

class BookmarkItem extends StatelessWidget {
  const BookmarkItem({
    super.key,
    required this.theme,
    required this.bookmark,
  });

  final AppTheme theme;
  final Bookmark bookmark;

  @override
  Widget build(BuildContext context) {
    final primaryColor = switch (theme) {
      .light => typographyPrimaryLight,
      .dark => typographyPrimaryDark,
      .brownLight => typographyPrimaryBrownLight,
      .brownDark => typographyPrimaryBrownDark,
    };

    final secondaryColor = switch (theme) {
      .light => typographySecondaryLight,
      .dark => typographySecondaryDark,
      .brownLight => typographySecondaryBrownLight,
      .brownDark => typographySecondaryBrownDark,
    };

    final iconColor = switch (theme) {
      AppTheme.light => brandPrimaryLight,
      AppTheme.dark => brandPrimaryDark,
      AppTheme.brownLight => brandPrimaryBrownLight,
      AppTheme.brownDark => brandPrimaryBrownDark,
    };

    return AppCard(
      theme: theme,
      child: Row(
        spacing: 8,
        children: [
          CircleCard(
            theme: theme,
            child: SvgPicture.asset(
              'assets/icons/bookmark.svg',
              colorFilter: .mode(iconColor, .srcIn),
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
                  style: textCallout.copyWith(color: primaryColor),
                  overflow: .ellipsis,
                ),
                Text(
                  '${bookmark.aayahNumber} аят',
                  style: textBodyMedium.copyWith(color: secondaryColor),
                ),
              ],
            ),
          ),
        ],
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
