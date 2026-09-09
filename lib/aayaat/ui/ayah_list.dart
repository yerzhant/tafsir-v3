import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tafsir/aayaat/cubit/aayaat_cubit.dart';
import 'package:tafsir/aayaat/domain/ayah_position.dart';
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

  });

  final AayaatCubit cubit;
  final List<Surah> suwar;
  final MainCubit mainCubit;
  final VoidCallback onShowSuwar;
  final AayaatStateSuccess state;

  @override
  State<AyahList> createState() => _AyahListState();
}

class _AyahListState extends State<AyahList> with WidgetsBindingObserver {
  late AyahPosition _position;

  @override
  void initState() {
    super.initState();

    _position = widget.state.scrollToPosition;

    WidgetsBinding.instance.addObserver(this);
  }

  @override
  void dispose() {
    WidgetsBinding.instance.removeObserver(this);

    super.dispose();
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    super.didChangeAppLifecycleState(state);

    if (state == .paused || state == .detached) {
      widget.cubit.savePosition(_position);
    }
  }

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
    return PopScope(
      onPopInvokedWithResult: (didPop, result) => widget.cubit.savePosition(
        _position,
      ),

      child: BlocListener<AayaatCubit, AayaatState>(
        listener: (context, state) {
          // if (state case AayaatStateSuccess(
          //   :final scrollToPosition,
          //   :final scrollToNewPosition,
          // ) when scrollToNewPosition) {
          //   _scrollTo(scrollToPosition);
          // }
        },

        child: SliverList.separated(
          separatorBuilder: (context, index) => const SizedBox(height: 8),

          // initialAlignment: _position.alignment,
          // initialScrollIndex: _position.number - 1,
          itemCount: widget.state.aayaat.length + 1,

          // itemScrollController: _controller,
          // itemPositionsListener: _listener,
          itemBuilder: (context, index) {
            if (index == widget.state.aayaat.length) {
              return SurahNavigator(
                suwar: widget.suwar,
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
        ),
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
