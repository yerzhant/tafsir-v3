import 'package:flutter/material.dart';
import 'package:tafsir/common/ui/app_theme.dart';
import 'package:tafsir/main/domain/bookmark.dart';
import 'package:tafsir/main/ui/bookmark_item.dart';

class BookmarksList extends StatelessWidget {
  const BookmarksList({
    super.key,
    required this.theme,
    required this.items,
    required this.hasTopPadding,
  });

  final AppTheme theme;
  final List<Bookmark> items;
  final bool hasTopPadding;

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      padding: .only(
        right: 20,
        left: 20,
        bottom: 20,
        top: hasTopPadding ? 20 : 0,
      ),
      itemCount: items.length,
      itemBuilder: (context, index) => BookmarkItem(
        theme: theme,
        bookmark: items[index],
      ),
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
