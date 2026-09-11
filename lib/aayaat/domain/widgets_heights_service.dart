import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fpdart/fpdart.dart';
import 'package:tafsir/aayaat/domain/aayah.dart';
import 'package:tafsir/aayaat/domain/widgets_heights_result.dart';
import 'package:tafsir/aayaat/ui/ayah_card.dart';
import 'package:tafsir/aayaat/ui/surah_header.dart';
import 'package:tafsir/aayaat/ui/surah_navigator.dart';
import 'package:tafsir/aayaat/ui/widgets_heights_measurer.dart';
import 'package:tafsir/common/domain/error.dart';
import 'package:tafsir/main/cubit/main_cubit.dart';
import 'package:tafsir/main/domain/surah.dart';
import 'package:tafsir/settings/cubit/settings_cubit.dart';
import 'package:tafsir/theme/cubit/theme_cubit.dart';

const _batchSize = 10;

class WidgetsHeightsService {
  late BuildContext _context;
  late MainCubit _mainCubit;
  late List<Surah> _suwar;

  var _screenWidth = 0.0;
  var _headerHeight = 0.0;
  var _navHeight = 0.0;

  final _heights = <SurahNumber, List<WidgetHeight>>{};

  void init(BuildContext context, MainCubit mainCubit, List<Surah> suwar) {
    _suwar = suwar;
    _context = context;
    _mainCubit = mainCubit;
  }

  TaskEither<AppError, WidgetsHeightsResult> getFor(
    Surah surah,
    List<Aayah> aayaat,
  ) => .Do(($) async {
    final screenWidth = MediaQuery.widthOf(_context);
    final contentWidth = screenWidth - 40;

    if (screenWidth != _screenWidth) {
      _heights.clear();

      _headerHeight = (await $(
        _getHeights([
          SurahHeader(
            surah: surah,
            onInfo: () {},
            onSuwar: () {},
            onTheme: () {},
            onSettings: () {},
            onGoToAyah: () {},
          ),
        ], screenWidth),
      )).first;

      _navHeight = (await $(
        _getHeights([
          SurahNavigator(
            suwar: _suwar,
            number: surah.number,
            mainCubit: _mainCubit,
            onOpenSurah: () {},
            onShowSuwar: () {},
          ),
        ], contentWidth),
      )).first;

      _screenWidth = screenWidth;
    }

    if (!_heights.containsKey(surah.number)) {
      final widgets = aayaat
          .map((e) => AyahCard(ayah: e, surah: surah, isBookmarked: false))
          .toList();

      _heights[surah.number] = await $(_getHeights(widgets, contentWidth));
    }

    final offsets = <double>[];
    offsets.add(_headerHeight + 12);
    var offset = _headerHeight + 12;

    final heights = _heights[surah.number]!;

    for (final height in heights) {
      offset += height + 8;
      offsets.add(offset);
    }

    // ignore: use_build_context_synchronously
    final screenHeight = MediaQuery.heightOf(_context);

    return .new(
      .new(
        _headerHeight +
            _navHeight +
            heights.reduce((value, element) => .new(value + element + 8)) +
            12 +
            12 +
            20 -
            screenHeight,
      ),
      offsets,
    );
  });

  TaskEither<AppError, List<WidgetHeight>> _getHeights(
    List<Widget> widgets,
    double maxWidth,
  ) => .tryCatch(() async {
    final List<WidgetHeight> heights = [];

    final pixelRatio = MediaQuery.of(_context).devicePixelRatio;

    final viewConfig = ViewConfiguration(
      logicalConstraints: .new(
        minWidth: maxWidth,
        maxWidth: maxWidth,
      ),
      physicalConstraints: .new(
        minWidth: maxWidth * pixelRatio,
        maxWidth: maxWidth * pixelRatio,
      ),
      devicePixelRatio: pixelRatio,
    );

    final FlutterView currentView = View.of(_context);

    for (int i = 0; i < widgets.length; i += _batchSize) {
      final end = (i + _batchSize < widgets.length)
          ? i + _batchSize
          : widgets.length;
      final batchChunk = widgets.sublist(i, end);

      final pipe = PipelineOwner();
      final renderView = RenderView(
        configuration: viewConfig,
        view: currentView,
      );

      pipe.rootNode = renderView;
      renderView.prepareInitialFrame();

      final build = BuildOwner(focusManager: .new());

      final root = RenderObjectToWidgetAdapter(
        container: renderView,
        child: Directionality(
          textDirection: .ltr,
          child: MediaQuery(
            data: MediaQuery.of(
              // ignore: use_build_context_synchronously
              _context,
            ).copyWith(size: .new(maxWidth, .infinity)),
            child: Material(
              type: .transparency,
              child: MultiBlocProvider(
                providers: [
                  // ignore: use_build_context_synchronously
                  BlocProvider.value(value: _context.read<ThemeCubit>()),
                  // ignore: use_build_context_synchronously
                  BlocProvider.value(value: _context.read<SettingsCubit>()),
                ],
                child: Column(
                  mainAxisSize: .min,
                  children: batchChunk,
                ),
              ),
            ),
          ),
        ),
      ).attachToRenderTree(build);

      build.buildScope(root);
      pipe.flushLayout();
      pipe.flushCompositingBits();

      RenderFlex? columnRenderObject;

      void locateTargetColumn(RenderObject object) {
        if (object is RenderFlex) {
          columnRenderObject = object;
          return;
        }
        object.visitChildren(locateTargetColumn);
      }

      renderView.visitChildren(locateTargetColumn);

      if (columnRenderObject != null) {
        columnRenderObject!.visitChildren((child) {
          if (child is RenderBox) {
            heights.add(.new(child.size.height));
          }
        });
      }

      build.buildScope(root, () {
        root.update(
          RenderObjectToWidgetAdapter(
            container: renderView,
            child: const SizedBox.shrink(),
          ),
        );
      });

      build.finalizeTree();

      await WidgetsBinding.instance.endOfFrame;
      await Future.delayed(.zero);
    }

    print('------------- hs: $heights');

    return heights;
  }, ExceptionError.new);
}
