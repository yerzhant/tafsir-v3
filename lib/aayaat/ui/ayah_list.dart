import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';
import 'package:tafsir/aayaat/cubit/aayaat_cubit.dart';
import 'package:tafsir/aayaat/domain/ayah_position.dart';
import 'package:tafsir/aayaat/ui/ayah_card.dart';
import 'package:tafsir/common/ui/app_error_widget.dart';
import 'package:tafsir/common/ui/app_theme.dart';
import 'package:tafsir/settings/cubit/settings_cubit.dart';
import 'package:tafsir/theme/cubit/theme_cubit.dart';

class AyahList extends StatefulWidget {
  const AyahList({super.key});

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

        return BlocConsumer<AayaatCubit, AayaatState>(
          listener: (context, state) {
            // _scrollTo(state.position);
          },
          builder: (context, state) => switch (state) {
            AayaatStateSuccess() => _success(state, theme),

            AayaatStateFailure(:final error) => AppErrorWidget(
              error: error,
              theme: theme,
              onPressed: context.read<AayaatCubit>().init,
            ),
          },
        );
      },
    );
  }

  BlocBuilder<SettingsCubit, SettingsState> _success(
    AayaatStateSuccess state,
    AppTheme theme,
  ) {
    return BlocBuilder<SettingsCubit, SettingsState>(
      builder: (context, settings) {
        return ScrollablePositionedList.separated(
          padding: const .symmetric(horizontal: 20, vertical: 12),
          initialScrollIndex: state.position.number - 1,
          initialAlignment: state.position.alignment,
          itemCount: state.aayaat.length,
          itemBuilder: (context, index) => AyahCard(
            theme: theme,
            ayah: state.aayaat[index],
            key: .new(index.toString()),
            showAyah: settings.showAyah,
            showTafsir: settings.showTafsir,
            showTranslation: settings.showTranslation,
            showFootnotes: settings.showFootnotes,
            isBookmarked: state.bookmarks.contains(index + 1),
            onShare: (text) {},
            onPlay: (number) {},
          ),
          separatorBuilder: (context, index) => const SizedBox(height: 8),
          itemScrollController: _controller,
          itemPositionsListener: _listener,
        );
      },
    );
  }

  // void _share()
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
