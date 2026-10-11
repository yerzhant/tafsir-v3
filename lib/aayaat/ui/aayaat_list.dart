import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:super_sliver_list/super_sliver_list.dart';
import 'package:tafsir/aayaat/cubit/scroll_position_cubit.dart';
import 'package:tafsir/aayaat/domain/aayah.dart';
import 'package:tafsir/aayaat/ui/ayah_card.dart';
import 'package:tafsir/main/domain/surah.dart';

class AayaatList extends StatefulWidget {
  const AayaatList({
    super.key,
    required this.surah,
    required this.aayaat,
    required this.bookmarks,
  });

  final Surah surah;
  final List<Aayah> aayaat;
  final Set<AayahNumber> bookmarks;

  @override
  State<AayaatList> createState() => _AayaahListState();
}

class _AayaahListState extends State<AayaatList> {
  final _controller = ListController();

  @override
  void initState() {
    super.initState();
    _controller.addListener(_onScroll);
  }

  @override
  void dispose() {
    _controller.removeListener(_onScroll);
    _controller.dispose();
    super.dispose();
  }

  void _onScroll() {
    final index = _controller.visibleRange!.$2;
    context.read<ScrollPositionCubit>().update(.new(index ~/ 2 + 1));
  }

  @override
  Widget build(BuildContext context) {
    return SuperSliverList.separated(
      listController: _controller,
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
    );
  }
}
