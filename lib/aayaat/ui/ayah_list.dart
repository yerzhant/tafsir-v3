import 'package:flutter/material.dart';
import 'package:tafsir/aayaat/cubit/aayaat_cubit.dart';
import 'package:tafsir/aayaat/cubit/scroll_position_cubit.dart';
import 'package:tafsir/aayaat/ui/ayah_card.dart';
import 'package:tafsir/aayaat/ui/surah_navigator.dart';
import 'package:tafsir/main/cubit/main_cubit.dart';
import 'package:tafsir/main/domain/surah.dart';

class AyahList extends StatefulWidget {
  const AyahList({
    super.key,
    required this.cubit,
    required this.state,
    required this.suwar,
    required this.mainCubit,
    required this.onShowSuwar,
    required this.positionCubit,
    required this.setListContext,
  });

  final AayaatCubit cubit;
  final List<Surah> suwar;
  final MainCubit mainCubit;
  final VoidCallback onShowSuwar;
  final AayaatStateSuccess state;
  final ScrollPositionCubit positionCubit;
  final ValueSetter<BuildContext> setListContext;

  @override
  State<AyahList> createState() => _AyahListState();
}

class _AyahListState extends State<AyahList> {
  var _listContextSet = false;

  @override
  Widget build(BuildContext context) {
    return SliverList.separated(
      itemBuilder: (context, index) {
        if (!_listContextSet) {
          widget.setListContext(context);
          _listContextSet = true;
        }

        if (index == widget.state.aayaat.length) {
          return SurahNavigator(
            suwar: widget.suwar,
            key: .new(index.toString()),
            mainCubit: widget.mainCubit,
            onShowSuwar: widget.onShowSuwar,
            number: widget.state.surah.number,
          );
        }

        return AyahCard(
          surah: widget.state.surah,
          key: .new(index.toString()),
          ayah: widget.state.aayaat[index],
          isBookmarked: widget.state.bookmarks.contains(index + 1),
        );
      },

      itemCount: widget.state.aayaat.length + 1,

      separatorBuilder: (context, index) => const SizedBox(height: 8),
    );
  }
}

// @Preview(group: 'Ayah List', name: 'Light')
// Widget previewLight() => sizedWrapper(
//   BlocProvider(
//     create: (context) => SurahCubit(const .new(2, 0)),
//     child: AyahList(
//       theme: .light,

//       aayaah: const [
//         .new(1, .new('arabic'), .new('tafsir'), .new('translation')),
//         .new(2, .new('arabic'), .new('tafsir'), .new('translation')),
//         .new(3, .new('arabic'), .new('tafsir'), .new('translation')),
//       ],

//       showAyah: true,
//       showTafsir: true,
//       showTransaltion: true,
//       showFootnotes: true,

//       bookmarks: {1},

//       onShare: (text) => print(text),
//       onPlay: (number) => print(number),
//       onBookmark: (number) => print(number),

//       onLastPosition: (position) => print(position),
//     ),
//   ),
//   width: 400,
//   hight: 290,
//   padding: 0,
// );
