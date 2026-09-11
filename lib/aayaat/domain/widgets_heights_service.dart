import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fpdart/fpdart.dart';
import 'package:tafsir/aayaat/ui/widgets_heights_measurer.dart';
import 'package:tafsir/common/domain/error.dart';
import 'package:tafsir/settings/cubit/settings_cubit.dart';
import 'package:tafsir/theme/cubit/theme_cubit.dart';

const _batchSize = 10;

class WidgetsHeightsService {
  TaskEither<AppError, List<WidgetHeight>> getFor(
    BuildContext context,
    List<Widget> widgets,
    double maxWidth,
  ) => .tryCatch(() async {
    final List<WidgetHeight> heights = [];

    final pixelRatio = MediaQuery.of(context).devicePixelRatio;

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

    final FlutterView currentView = View.of(context);

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
              context,
            ).copyWith(size: .new(maxWidth, .infinity)),
            child: Material(
              type: .transparency,
              child: MultiBlocProvider(
                providers: [
                  // ignore: use_build_context_synchronously
                  BlocProvider.value(value: context.read<ThemeCubit>()),
                  // ignore: use_build_context_synchronously
                  BlocProvider.value(value: context.read<SettingsCubit>()),
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
