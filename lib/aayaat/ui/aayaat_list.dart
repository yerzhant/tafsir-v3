import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:super_sliver_list/super_sliver_list.dart';
import 'package:tafsir/aayaat/cubit/aayaat_cubit.dart';
import 'package:tafsir/aayaat/cubit/scroll_position_cubit.dart';
import 'package:tafsir/aayaat/domain/aayah.dart';
import 'package:tafsir/aayaat/domain/ayah_position.dart';
import 'package:tafsir/aayaat/ui/ayah_card.dart';
import 'package:tafsir/common/domain/scope_functions.dart';
import 'package:tafsir/main/domain/surah.dart';

class AayaatList extends StatefulWidget {
  const AayaatList({
    super.key,
    required this.surah,
    required this.aayaat,
    required this.bookmarks,
    required this.ayahPosition,
    required this.scrollController,
  });

  final Surah surah;
  final List<Aayah> aayaat;
  final AyahPosition ayahPosition;
  final Set<AayahNumber> bookmarks;
  final ScrollController scrollController;

  @override
  State<AayaatList> createState() => _AayaahListState();
}

class _AayaahListState extends State<AayaatList> {
  final _listController = ListController();

  @override
  void initState() {
    super.initState();

    _listController.addListener(_onScroll);

    if (widget.ayahPosition.number != 1) {
      WidgetsBinding.instance.addPostFrameCallback(
        (timeStamp) => _listController.jumpToItem(
          scrollController: widget.scrollController,
          index: (widget.ayahPosition.number - 1) * 2,
          alignment: 0,
        ),
      );
    }
  }

  @override
  void dispose() {
    _listController.removeListener(_onScroll);
    _listController.dispose();

    super.dispose();
  }

  void _onScroll() {
    _listController.visibleRange?.let(
      (it) => context.read<ScrollPositionCubit>().update(
        .new(it.$1 ~/ 2 + 1),
        .new(it.$2 ~/ 2 + 1),
      ),
    );
  }

  void _goTo(AayahNumber aayahNumber) {
    _listController.animateToItem(
      alignment: 0,
      index: (aayahNumber - 1) * 2,
      curve: (_) => Curves.fastOutSlowIn,
      scrollController: widget.scrollController,
      duration: (_) => const .new(milliseconds: 500),
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<AayaatCubit, AayaatState>(
      listener: (context, state) {
        if (state case AayaatStateSuccess(
          :final goToAayah,
        ) when goToAayah != null) {
          _goTo(goToAayah);
        }
      },
      child: SuperSliverList.separated(
        listController: _listController,
        itemCount: widget.aayaat.length,
        separatorBuilder: (context, index) {
          return const SizedBox(height: 8);
        },
        itemBuilder: (context, index) => AyahCard(
          surah: widget.surah,
          ayah: widget.aayaat[index],
          key: .new(index.toString()),
          isBookmarked: widget.bookmarks.contains(index + 1),
        ),
      ),
    );
  }
}
