import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';
import 'package:tafsir/aayaat/cubit/aayaat_cubit.dart';
import 'package:tafsir/aayaat/cubit/scroll_position_cubit.dart';
import 'package:tafsir/aayaat/domain/ayah_position.dart';
import 'package:tafsir/aayaat/ui/ayah_card.dart';
import 'package:tafsir/aayaat/ui/surah_navigator.dart';
import 'package:tafsir/common/domain/scope_functions.dart';
import 'package:tafsir/main/cubit/main_cubit.dart';
import 'package:tafsir/main/domain/surah.dart';

class AyahList extends StatefulWidget {
  const AyahList({
    super.key,
    required this.cubit,
    required this.state,
    required this.suwar,
    required this.header,
    required this.headerKey,
    required this.mainCubit,
    required this.onShowSuwar,
    required this.positionCubit,
  });

  final Widget header;
  final AayaatCubit cubit;
  final List<Surah> suwar;
  final GlobalKey headerKey;
  final MainCubit mainCubit;
  final VoidCallback onShowSuwar;
  final AayaatStateSuccess state;
  final ScrollPositionCubit positionCubit;

  @override
  State<AyahList> createState() => _AyahListState();
}

class _AyahListState extends State<AyahList> with WidgetsBindingObserver {
  final _controller = ItemScrollController();
  final _listener = ItemPositionsListener.create();
  final _offsetListener = ScrollOffsetListener.create();

  StreamSubscription<double>? _offsetSubscription;

  late AyahPosition _position;

  var _offset = 0.0;
  var _headerTop = 0.0;
  var _headerHeight = 0.0;

  @override
  void initState() {
    super.initState();

    _position = widget.state.scrollToPosition;

    WidgetsBinding.instance.addObserver(this);

    _listener.itemPositions.addListener(_updatePosition);

    _offsetSubscription = _offsetListener.changes.listen(_updateOffset);

    WidgetsBinding.instance.addPostFrameCallback((_) => _updateHeaderHeight());
  }

  @override
  void dispose() {
    _offsetSubscription?.cancel();

    _listener.itemPositions.removeListener(_updatePosition);

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

  void _updatePosition() {
    final position = _listener.itemPositions.value.first;
    _position = .new(.new(position.index + 1), position.itemLeadingEdge);
    widget.positionCubit.updateAayahNumber(_position.number);
  }

  void _updateOffset(double delta) {
    _offset -= delta;
    print('--- $delta');
    print('================ $_offset');

    if (_headerTop == 0 && delta > 0 && _offset < -_headerHeight) {
      setState(() => _headerTop = -_headerHeight);
    }

    if (_headerTop != 0 && delta < 0) {
      setState(() => _headerTop = 0);
    }
  }

  void _updateHeaderHeight() {
    widget.headerKey.currentContext?.let((it) {
      final box = it.findRenderObject() as RenderBox;
      setState(() => _headerHeight = box.size.height);
    });
  }

  void _scrollTo(AyahPosition position) async {
    await _controller.scrollTo(
      index: position.number - 1,
      curve: Curves.easeInOutCubic,
      alignment: position.alignment,
      duration: const .new(milliseconds: 500),
    );
  }

  @override
  Widget build(BuildContext context) {
    return PopScope(
      onPopInvokedWithResult: (didPop, result) => widget.cubit.savePosition(
        _position,
      ),

      child: BlocListener<AayaatCubit, AayaatState>(
        listener: (context, state) {
          if (state case AayaatStateSuccess(
            :final scrollToPosition,
            :final scrollToNewPosition,
          ) when scrollToNewPosition) {
            _scrollTo(scrollToPosition);
          }
        },

        child: Stack(
          children: [
            _List(
              widget: widget,
              listener: _listener,
              position: _position,
              controller: _controller,
              headerHeight: _headerHeight,
              offsetListener: _offsetListener,
            ),

            AnimatedPositioned(
              duration: const .new(milliseconds: 500),
              right: 0,
              left: 0,
              top: _headerTop,
              child: widget.header,
            ),
          ],
        ),
      ),
    );
  }
}

class _List extends StatelessWidget {
  const _List({
    required this.widget,
    required this._listener,
    required this._position,
    required this._controller,
    required this.headerHeight,
    required this._offsetListener,
  });

  final AyahList widget;
  final double headerHeight;
  final AyahPosition _position;
  final ItemPositionsListener _listener;
  final ItemScrollController _controller;
  final ScrollOffsetListener _offsetListener;

  @override
  Widget build(BuildContext context) {
    return ScrollablePositionedList.separated(
      separatorBuilder: (context, index) => const SizedBox(height: 8),

      padding: .only(
        right: 20,
        left: 20,
        top: 12 + headerHeight,
        bottom: MediaQuery.paddingOf(context).bottom,
      ),

      initialAlignment: _position.alignment,
      initialScrollIndex: _position.number - 1,
      itemCount: widget.state.aayaat.length + 1,

      itemScrollController: _controller,
      itemPositionsListener: _listener,

      scrollOffsetListener: _offsetListener,

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
