import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

extension type const WidgetHeight(double value) implements double {}

class WidgetsHeightsMeasurer {
  static List<WidgetHeight> process(
    BuildContext context,
    List<Widget> widgets,
    double maxWidth,
  ) {
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
        child: Material(
          type: .transparency,
          child: Column(
            mainAxisSize: .min,
            children: widgets,
          ),
        ),
      ),
    ).attachToRenderTree(build);

    build.buildScope(root);
    pipe.flushLayout();

    final List<WidgetHeight> heights = [];

    view.visitChildren((child) {
      if (child is RenderBox) {
        RenderBox? column = child.firstChild;

        while (column != null) {
          heights.add(.new(column.size.height));
          final parentData = column.parentData;

          // if (parentData is ContainerBoxParentDataMixin<RenderBox>) {
          if (parentData is ContainerParentDataMixin<RenderBox>) {
            column = parentData.nextSibling;
          } else {
            column = null;
          }
        }
      }
    });

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
  }
}
