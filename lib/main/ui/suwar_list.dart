import 'package:flutter/material.dart';
import 'package:tafsir/aayaat/ui/surah_info_card.dart';
import 'package:tafsir/common/ui/app_theme.dart';
import 'package:tafsir/main/domain/muqaddimah.dart';
import 'package:tafsir/main/domain/surah.dart';
import 'package:tafsir/main/ui/muqaddimah_item.dart';
import 'package:tafsir/main/ui/surah_item.dart';

class SuwarList extends StatelessWidget {
  const SuwarList({
    super.key,
    required this.theme,
    required this.suwar,
    required this.muqaddimat,
    required this.hasTopPadding,
  });

  final AppTheme theme;
  final List<Surah> suwar;
  final List<Muqaddimah> muqaddimat;
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
      itemBuilder: (context, index) {
        if (index < muqaddimat.length) {
          final muqaddimah = muqaddimat[index];

          return MuqaddimahItem(
            theme: theme,
            muqaddimah: muqaddimah,
            onTap: () => _showMuqaddimah(muqaddimah, context),
          );
        } else {
          return SurahItem(
            theme: theme,
            surah: suwar[index - muqaddimat.length],
          );
        }
      },
      itemCount: muqaddimat.length + suwar.length,
      separatorBuilder: (context, index) => SizedBox(
        height: index == muqaddimat.length - 1 ? 12 : 8,
      ),
    );
  }

  void _showMuqaddimah(Muqaddimah muqaddimah, BuildContext context) {
    showBottomSheet(
      context: context,
      builder: (context) => SurahInfoCard(
        theme: theme,
        info: .new(muqaddimah.content),
      ),
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
