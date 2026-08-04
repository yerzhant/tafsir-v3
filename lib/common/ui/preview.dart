import 'package:flutter/material.dart';
import 'package:tafsir/common/ui/app_theme.dart';

Widget wrapper(Widget child) => Card(
  color: bgPrimaryLight,
  child: Padding(padding: const .all(20), child: child),
);

Widget sizedWrapper(
  Widget child, {
  double width = 300,
  double hight = 150,
  double padding = 20,
  Color color = bgPrimaryLight,
}) => SizedBox(
  width: width,
  height: hight,
  child: Card(
    color: color,
    child: Padding(
      padding: .all(padding),
      child: child,
    ),
  ),
);
