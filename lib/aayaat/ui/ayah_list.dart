import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';
import 'package:tafsir/aayaat/cubit/aayaat_cubit.dart';
import 'package:tafsir/aayaat/domain/aayah.dart';
import 'package:tafsir/aayaat/domain/ayah_position.dart';
import 'package:tafsir/aayaat/ui/ayah_card.dart';
import 'package:tafsir/common/ui/app_theme.dart';

class AyahList extends StatefulWidget {
  const AyahList({
    super.key,
    required this.theme,

    required this.aayaah,

    required this.showAyah,
    required this.showTafsir,
    required this.showTranslation,
    required this.showFootnotes,

    required this.bookmarks,

    required this.onShare,
    required this.onPlay,
    required this.onBookmark,

    required this.onLastPosition,
  });

  final AppTheme theme;

  final List<Aayah> aayaah;

  final bool showAyah;
  final bool showTafsir;
  final bool showTranslation;
  final bool showFootnotes;

  final Set<int> bookmarks;

  final void Function(String text) onShare;
  final void Function(int number) onPlay;
  final void Function(int number) onBookmark;

  final void Function(AyahPosition position) onLastPosition;

  @override
  State<AyahList> createState() => _AyahListState();
}

class _AyahListState extends State<AyahList> {
  final _controller = ItemScrollController();
  final _listener = ItemPositionsListener.create();

  @override
  void dispose() {
    final position = _listener.itemPositions.value.first;
    widget.onLastPosition(
      .new(
        .new(position.index),
        position.itemLeadingEdge,
      ),
    );

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
    return BlocConsumer<AayaatCubit, AayaatState>(
      listener: (context, state) {
        _scrollTo(state.position);
      },
      builder: (context, state) => ScrollablePositionedList.separated(
        padding: const .symmetric(horizontal: 20, vertical: 12),
        initialScrollIndex: state.position.number - 1,
        initialAlignment: state.position.alignment,
        itemCount: widget.aayaah.length,
        itemBuilder: (context, index) => AyahCard(
          key: .new(index.toString()),
          theme: widget.theme,
          ayah: widget.aayaah[index],
          showAyah: widget.showAyah,
          showTafsir: widget.showTafsir,
          showTranslation: widget.showTranslation,
          showFootnotes: widget.showFootnotes,
          isBookmarked: widget.bookmarks.contains(index + 1),
          onShare: widget.onShare,
          onPlay: widget.onPlay,
          onBookmark: widget.onBookmark,
        ),
        separatorBuilder: (context, index) => const SizedBox(height: 8),
        itemScrollController: _controller,
        itemPositionsListener: _listener,
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
