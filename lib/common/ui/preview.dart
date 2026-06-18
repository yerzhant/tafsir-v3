import 'package:flutter/material.dart';

Widget wrapper(Widget child) => Card(
  color: Colors.white,
  child: Padding(padding: const .all(20), child: child),
);

Widget sizedWrapper(
  Widget child, {
  double width = 300,
  double hight = 150,
  Color color = Colors.white,
}) => SizedBox(
  width: width,
  height: hight,
  child: Card(
    color: color,
    child: Padding(padding: const .all(20), child: child),
  ),
);
