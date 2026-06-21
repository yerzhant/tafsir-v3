import 'package:flutter/material.dart';
import 'package:tafsir/common/ui/app_theme.dart';
import 'package:tafsir/main/domain/last_read.dart';
import 'package:tafsir/main/ui/last_read_list_item.dart';

class LastReadList extends StatelessWidget {
  const LastReadList({super.key, required this.theme, required this.items});

  final AppTheme theme;
  final List<LastRead> items;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 37,
      child: ListView.separated(
        itemCount: items.length + 2,
        scrollDirection: .horizontal,
        itemBuilder: (context, index) {
          if (index == 0 || index == items.length + 1) {
            return const SizedBox(width: 20);
          }

          return LastReadListItem(theme: theme, lastRead: items[index - 1]);
        },
        separatorBuilder: (context, index) => const SizedBox(width: 8),
      ),
    );
  }
}

// @Preview(group: 'LastReadList', name: 'Light')
Widget previewLight() => const SizedBox(
  width: 400,
  child: Card(
    color: bgPrimaryLight,
    child: LastReadList(
      theme: .light,
      items: [
        .new(.new('Al-Fatiha'), .new(1), .new(3)),
        .new(.new('Al-Fatiha'), .new(1), .new(3)),
        .new(.new('Al-Fatiha'), .new(1), .new(3)),
        .new(.new('Al-Fatiha'), .new(1), .new(3)),
      ],
    ),
  ),
);
