import 'package:flutter/material.dart';
import 'package:tafsir/common/ui/app_theme.dart';
import 'package:tafsir/main/domain/info_item.dart';
import 'package:tafsir/main/domain/surah_item.dart';
import 'package:tafsir/main/ui/info_list_item.dart';
import 'package:tafsir/main/ui/surah_list_item.dart';

class SuwarList extends StatelessWidget {
  const SuwarList({
    super.key,
    required this.theme,
    required this.infoItems,
    required this.surahItems,
  });

  final AppTheme theme;
  final List<InfoItem> infoItems;
  final List<SurahItem> surahItems;

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemBuilder: (context, index) {
        if (index < infoItems.length) {
          return InfoListItem(theme: theme, item: infoItems[index]);
        } else {
          return SurahListItem(
            theme: theme,
            item: surahItems[index - infoItems.length],
          );
        }
      },
      itemCount: infoItems.length + surahItems.length,
      separatorBuilder: (context, index) =>
          SizedBox(height: index == infoItems.length - 1 ? 12 : 8),
    );
  }
}

// @Preview(group: 'SuwarList', name: 'Light')
// Widget previewLight() => sizedWrapper(
//   const SuwarList(
//     theme: .light,
//     infoItems: [
//       .new(.azanRu, .new('Azan.ru')),
//       .new(.azanRu, .new('Azan.ru')),
//       .new(.azanRu, .new('Azan.ru')),
//     ],
//     surahItems: [
//       .new(
//         .new(1),
//         .new('Al-Fatiha'),
//         .new('Openning'),
//         .mekkah,
//         .new(7),
//         .new('1'),
//       ),
//       .new(
//         .new(1),
//         .new('Al-Fatiha'),
//         .new('Openning'),
//         .mekkah,
//         .new(7),
//         .new('1'),
//       ),
//       .new(
//         .new(1),
//         .new('Al-Fatiha'),
//         .new('Openning'),
//         .mekkah,
//         .new(7),
//         .new('1'),
//       ),
//     ],
//   ),
//   width: 400,
//   hight: 450,
// );
