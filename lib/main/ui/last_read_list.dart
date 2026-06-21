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
    final primaryColor = switch (theme) {
      .light => typographyPrimaryLight,
      .dark => typographyPrimaryDark,
      .brownLight => typographyPrimaryBrownLight,
      .brownDark => typographyPrimaryBrownDark,
    };

    return Column(
      children: [
        const SizedBox(height: 16),
        Row(
          children: [
            const SizedBox(width: 20),
            Text(
              'Последнее прочитанное',
              style: textBodyMedium.copyWith(color: primaryColor),
            ),
          ],
        ),
        const SizedBox(height: 8),
        SizedBox(
          height: 37,
          child: ListView.separated(
            itemCount: items.length + 2,
            scrollDirection: .horizontal,
            itemBuilder: (context, index) {
              if (index == 0 || index == items.length + 1) {
                return const SizedBox(width: 12);
              }

              return LastReadListItem(theme: theme, lastRead: items[index - 1]);
            },
            separatorBuilder: (context, index) => const SizedBox(width: 8),
          ),
        ),
        const SizedBox(height: 16),
      ],
    );
  }
}

// @Preview(group: 'LastReadList1', name: 'Light')
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
