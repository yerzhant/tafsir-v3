import 'package:flutter/material.dart';
import 'package:flutter/widget_previews.dart';
import 'package:tafsir/common/ui/app_theme.dart';
import 'package:tafsir/common/ui/preview.dart';
import 'package:tafsir/main/domain/djuz_item.dart';
import 'package:tafsir/main/ui/djuz_list_item.dart';

class AdjzaaList extends StatelessWidget {
  const AdjzaaList({super.key, required this.theme, required this.items});

  final AppTheme theme;
  final List<DjuzItem> items;

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemCount: items.length,
      itemBuilder: (context, index) => DjuzListItem(
        theme: theme,
        item: items[index],
      ),
      separatorBuilder: (context, index) => const SizedBox(height: 8),
    );
  }
}

@Preview(group: 'AdjzaaList', name: 'Light')
Widget previewLight() => sizedWrapper(
  const AdjzaaList(
    theme: .light,
    items: [
      .new(.new(1), .new('Al-Fatiha'), .new('Al-Baqarah'), .madinah),
      .new(.new(1), .new('Al-Fatiha'), .new('Al-Baqarah'), .madinah),
      .new(.new(1), .new('Al-Fatiha'), .new('Al-Baqarah'), .madinah),
    ],
  ),
  width: 400,
  hight: 250,
);
