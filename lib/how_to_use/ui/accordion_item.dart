import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:tafsir/common/ui/app_theme.dart';

const _duration = Duration(milliseconds: 200);

class AccordionItem extends StatefulWidget {
  const AccordionItem({
    super.key,
    required this.theme,
    required this.title,
    required this.content,
  });

  final AppTheme theme;
  final String title;
  final String content;

  @override
  State<AccordionItem> createState() => _AccordionItemState();
}

class _AccordionItemState extends State<AccordionItem>
    with SingleTickerProviderStateMixin {
  var _expanded = false;

  void _toggle() => setState(() {
    _expanded = !_expanded;
  });

  @override
  Widget build(BuildContext context) {
    final titleColor = switch (widget.theme) {
      .light => typographyPrimaryLight,
      .dark => typographyPrimaryDark,
      .brownLight => typographyPrimaryBrownLight,
      .brownDark => typographyPrimaryBrownDark,
    };

    final contentColor = switch (widget.theme) {
      .light => typographySecondaryLight,
      .dark => typographySecondaryDark,
      .brownLight => typographySecondaryBrownLight,
      .brownDark => typographySecondaryBrownDark,
    };

    final bgColor = switch (widget.theme) {
      .light => bgSecondaryLight,
      .dark => bgSecondaryDark,
      .brownLight => bgSecondaryBrownLight,
      .brownDark => bgSecondaryBrownDark,
    };

    final borderColor = switch (widget.theme) {
      .light => borderPrimaryLight,
      .dark => borderPrimaryDark,
      .brownLight => borderPrimaryBrownLight,
      .brownDark => borderPrimaryBrownDark,
    };

    return Container(
      padding: const .all(16),
      decoration: BoxDecoration(
        color: bgColor,
        border: .all(color: borderColor),
        borderRadius: .circular(16),
      ),
      child: Column(
        spacing: 4,
        children: [
          Row(
            children: [
              Text(
                widget.title,
                style: textCallout.copyWith(color: titleColor),
              ),
              const Spacer(),
              GestureDetector(
                onTap: _toggle,
                child: AnimatedRotation(
                  duration: _duration,
                  turns: _expanded ? .25 : 0,
                  child: SvgPicture.asset('assets/icons/accordion-state.svg'),
                ),
              ),
            ],
          ),
          AnimatedCrossFade(
            duration: _duration,
            firstChild: Container(),
            secondChild: Text(
              widget.content,
              style: textBodyReg.copyWith(color: contentColor),
            ),
            crossFadeState: _expanded ? .showSecond : .showFirst,
          ),
        ],
      ),
    );
  }
}

// @Preview(group: 'LastReadListItem', name: 'Light')
// Widget previewLight() => sizedWrapper(
//   hight: 400,
//   const Column(
//     children: [
//       AccordionItem(
//         theme: .light,
//         title: 'Title Title Title',
//         content:
//             'Content Content Content Content Content Content Content Content Content Content Content Content Content Content Content Content Content Content lorem',
//       ),
//       AccordionItem(
//         theme: .light,
//         title: 'Title Title Title',
//         content:
//             'Content Content Content Content Content Content Content Content Content Content Content Content Content Content Content Content Content Content lorem',
//       ),
//     ],
//   ),
// );
