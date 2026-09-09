import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fpdart/fpdart.dart';
import 'package:tafsir/common/domain/error.dart';
import 'package:tafsir/settings/cubit/settings_cubit.dart';
import 'package:tafsir/theme/cubit/theme_cubit.dart';

extension type const WidgetHeight(double value) implements double {}

class WidgetsHeightsMeasurer {
  static TaskEither<AppError, List<WidgetHeight>> process(
    BuildContext context,
    List<Widget> widgets,
    double maxWidth,
  ) => .tryCatch(() async {
    final pipe = PipelineOwner();

    final view = RenderView(
      configuration: .new(
        physicalConstraints: BoxConstraints(maxWidth: maxWidth),
        logicalConstraints: BoxConstraints(maxWidth: maxWidth),
        devicePixelRatio: MediaQuery.of(context).devicePixelRatio,
      ),
      view: View.of(context),
    );

    pipe.rootNode = view;
    view.prepareInitialFrame();

    final build = BuildOwner(focusManager: .new());

    final root = RenderObjectToWidgetAdapter(
      container: view,
      child: Directionality(
        textDirection: .ltr,
        child: MediaQuery(
          data: MediaQuery.of(
            context,
          ).copyWith(size: .new(maxWidth, double.infinity)),
          child: Material(
            type: .transparency,
            child: MultiBlocProvider(
              providers: [
                BlocProvider.value(value: context.read<ThemeCubit>()),
                BlocProvider.value(value: context.read<SettingsCubit>()),
              ],
              child: Column(
                mainAxisSize: .min,
                children: widgets,
              ),
            ),
          ),
        ),
      ),
    ).attachToRenderTree(build);

    build.buildScope(root);
    pipe.flushLayout();

    final List<WidgetHeight> heights = [];

    void fillHeight(RenderObject object, List<WidgetHeight> heights) {
      if (object is RenderFlex) {
        object.visitChildren((child) {
          if (child is RenderBox) {
            heights.add(.new(child.size.height));
          }
        });

        return;
      }

      object.visitChildren((child) => fillHeight(child, heights));
    }

    view.visitChildren((object) => fillHeight(object, heights));

    debugPrint('==== heights: $heights');

    build.buildScope(
      root,
      () {
        root.update(
          RenderObjectToWidgetAdapter(
            container: view,
            child: const SizedBox.shrink(),
          ),
        );
      },
    );

    build.finalizeTree();

    return heights;
  }, ExceptionError.new);
}
