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
  var _initialized = false;

  late final BuildContext _context;
  late final MainCubit _mainCubit;
  late final List<Surah> _suwar;

  void init(BuildContext context, MainCubit mainCubit, List<Surah> suwar) {
    if (!_initialized) {
      _suwar = suwar;
      _context = context;
      _mainCubit = mainCubit;

      _initialized = true;
    }
  }

  TaskEither<AppError, WidgetsHeightsResult> getFor(
    Surah surah,
    List<Aayah> aayaat,
  ) => .Do(($) async {
    final screenWidth = MediaQuery.widthOf(_context);
    final contentWidth = screenWidth - 40;

    final headerHeight = (await $(
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

    final navHeight = (await $(
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

    final widgets = aayaat
        .map((e) => AyahCard(ayah: e, surah: surah, isBookmarked: false))
        .toList();

    final heights = await $(_getHeights(widgets, contentWidth));

    final offsets = <double>[];
    offsets.add(headerHeight + 12);
    var offset = headerHeight.value + 12;

    for (final height in heights) {
      offset += height + 8;
      offsets.add(offset);
    }

    // ignore: use_build_context_synchronously
    final screenHeight = MediaQuery.heightOf(_context);

    return .new(
      .new(
        headerHeight +
            navHeight +
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

    return heights;
  }, ExceptionError.new);
}
