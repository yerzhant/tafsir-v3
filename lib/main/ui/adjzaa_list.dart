import 'package:flutter/material.dart';
import 'package:tafsir/common/ui/app_theme.dart';
import 'package:tafsir/main/domain/djuz.dart';
import 'package:tafsir/main/domain/surah.dart';
import 'package:tafsir/main/ui/djuz_item.dart';

class AdjzaaList extends StatelessWidget {
  const AdjzaaList({
    super.key,
    required this.theme,
    required this.items,
    required this.suwar,
    required this.hasTopPadding,
  });

  final AppTheme theme;
  final List<Djuz> items;
  final List<Surah> suwar;
  final bool hasTopPadding;

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
      itemBuilder: (context, index) => DjuzItem(
        theme: theme,
        suwar: suwar,
        djuz: items[index],
      ),
      key: const PageStorageKey('adjzaa-list-key'),
      separatorBuilder: (context, index) => const SizedBox(height: 8),
    );
  }
}

// @Preview(group: 'AdjzaaList', name: 'Light')
// Widget previewLight() => sizedWrapper(
//   const AdjzaaList(
//     theme: .light,
//     items: [
//       .new(.new(1), .new('Al-Fatiha'), .new('Al-Baqarah'), .madinah),
//       .new(.new(1), .new('Al-Fatiha'), .new('Al-Baqarah'), .madinah),
//       .new(.new(1), .new('Al-Fatiha'), .new('Al-Baqarah'), .madinah),
//     ],
//   ),
//   width: 400,
//   hight: 250,
// );
