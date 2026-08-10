import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';
import 'package:tafsir/aayaat/cubit/aayaat_cubit.dart';
import 'package:tafsir/aayaat/domain/ayah_position.dart';
import 'package:tafsir/aayaat/ui/ayah_card.dart';
import 'package:tafsir/theme/cubit/theme_cubit.dart';

class AyahList extends StatefulWidget {
  const AyahList({super.key, required this.state});

  final AayaatStateSuccess state;

  @override
  State<AyahList> createState() => _AyahListState();
}

class _AyahListState extends State<AyahList> {
  final _controller = ItemScrollController();
  final _listener = ItemPositionsListener.create();

  @override
  void dispose() {
    // final position = _listener.itemPositions.value.first;
    // widget.onLastPosition(
    //   .new(
    //     .new(position.index),
    //     position.itemLeadingEdge,
    //   ),
    // );

    super.dispose();
  }

  void _scrollTo(AyahPosition position) {
    _controller.scrollTo(
      index: position.number,
      alignment: position.alignment,
      duration: const .new(milliseconds: 300),
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ThemeCubit, ThemeState>(
      builder: (context, state) {
        final theme = state.theme;

        return BlocListener<AayaatCubit, AayaatState>(
          listener: (context, state) {
            // _scrollTo(state.position);
          },
          child: ScrollablePositionedList.separated(
            padding: const .symmetric(horizontal: 20, vertical: 12),
            initialScrollIndex: widget.state.position.number - 1,
            initialAlignment: widget.state.position.alignment,
            itemCount: widget.state.aayaat.length,
            itemBuilder: (context, index) => AyahCard(
              theme: theme,
              surah: widget.state.surah,
              ayah: widget.state.aayaat[index],
              key: .new(index.toString()),
              isBookmarked: widget.state.bookmarks.contains(index + 1),
            ),
            separatorBuilder: (context, index) => const SizedBox(height: 8),
            itemScrollController: _controller,
            itemPositionsListener: _listener,
          ),
        );
      },
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
