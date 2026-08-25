import 'package:flutter/material.dart';
import 'package:tafsir/common/ui/app_theme.dart';
import 'package:tafsir/main/domain/bookmark.dart';
import 'package:tafsir/main/domain/surah.dart';
import 'package:tafsir/main/ui/bookmark_item.dart';

class BookmarksList extends StatelessWidget {
  const BookmarksList({
    super.key,
    required this.theme,
    required this.items,
    required this.suwar,
    required this.hasTopPadding,
  });

  final AppTheme theme;
  final List<Surah> suwar;
  final bool hasTopPadding;
  final List<Bookmark> items;

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      padding: .only(
        right: 20,
        left: 20,
        top: hasTopPadding ? 20 : 0,
        bottom: MediaQuery.paddingOf(context).bottom,
      ),
      itemCount: items.length,
      itemBuilder: (context, index) => BookmarkItem(
        bookmark: items[index],
        theme: theme,
        suwar: suwar,
      ),
      key: const PageStorageKey('bookmarks-list-key'),
      separatorBuilder: (context, index) => const SizedBox(height: 8),
    );
  }
}

// @Preview(group: 'BookmarksList', name: 'Light')
// Widget previewLight() => sizedWrapper(
//   const BookmarksList(
//     theme: .light,
//     items: [
//       .new(.new(1), .new('Al-Fatiha'), .new(1)),
//       .new(.new(1), .new('Al-Fatiha'), .new(1)),
//       .new(.new(1), .new('Al-Fatiha'), .new(1)),
//     ],
//   ),
//   width: 400,
//   hight: 250,
// );
