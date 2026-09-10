import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tafsir/aayaat/cubit/aayaat_cubit.dart';
import 'package:tafsir/aayaat/ui/ayah_card.dart';

class AyahList extends StatelessWidget {
  const AyahList({super.key, required this.state});

  final AayaatStateSuccess state;

  // void _updatePosition() {
  //   final position = _listener.itemPositions.value.first;
  //   _position = .new(.new(position.index + 1), position.itemLeadingEdge);
  //   widget.positionCubit.updateAayahNumber(_position.number);
  // }

  // void _scrollTo(AyahPosition position) async {
  //   await _controller.scrollTo(
  //     index: position.number - 1,
  //     curve: Curves.easeInOutCubic,
  //     alignment: position.alignment,
  //     duration: const .new(milliseconds: 500),
  //   );
  // }

  @override
  Widget build(BuildContext context) {
    return BlocListener<AayaatCubit, AayaatState>(
      listener: (context, state) {
        // if (state case AayaatStateSuccess(
        //   :final scrollToPosition,
        //   :final scrollToNewPosition,
        // ) when scrollToNewPosition) {
        //   _scrollTo(scrollToPosition);
        // }
      },

      child: SliverList.separated(
        itemCount: state.aayaat.length,
        itemBuilder: (context, index) => AyahCard(
          surah: state.surah,
          key: .new(index.toString()),
          ayah: state.aayaat[index],
          isBookmarked: state.bookmarks.contains(index + 1),
        ),
        separatorBuilder: (context, index) => const SizedBox(height: 8),
      ),
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
