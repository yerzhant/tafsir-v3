import 'package:flutter/material.dart';
import 'package:tafsir/common/ui/app_theme.dart';
import 'package:tafsir/main/domain/muqaddim.dart';
import 'package:tafsir/main/ui/muqaddim_item.dart';
import 'package:tafsir/main/ui/surah_item.dart';
import 'package:tafsir/surah/domain/surah.dart';

class SuwarList extends StatelessWidget {
  const SuwarList({
    super.key,
    required this.theme,
    required this.muqaddimat,
    required this.suwar,
  });

  final AppTheme theme;
  final List<Muqaddim> muqaddimat;
  final List<Surah> suwar;

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemBuilder: (context, index) {
        if (index < muqaddimat.length) {
          return MuqaddimItem(theme: theme, muqaddim: muqaddimat[index]);
        } else {
          return SurahItem(
            theme: theme,
            surah: suwar[index - muqaddimat.length],
          );
        }
      },
      itemCount: muqaddimat.length + suwar.length,
      separatorBuilder: (context, index) =>
          SizedBox(height: index == muqaddimat.length - 1 ? 12 : 8),
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
