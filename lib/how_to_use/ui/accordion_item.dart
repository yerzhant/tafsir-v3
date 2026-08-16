import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:tafsir/common/ui/app_theme.dart';
import 'package:tafsir/theme/cubit/theme_cubit.dart';

const _duration = Duration(milliseconds: 200);

class AccordionItem extends StatefulWidget {
  const AccordionItem({
    super.key,

    required this.title,
    required this.content,
  });

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
    final theme = context.read<ThemeCubit>().state.theme;

    return Container(
      padding: const .all(16),
      decoration: BoxDecoration(
        borderRadius: .circular(16),
        border: .all(color: borderPrimary(theme)),
        color: _expanded ? bgSecondary(theme) : null,
      ),
      child: Column(
        spacing: 4,
        children: [
          GestureDetector(
            onTap: _toggle,
            child: Row(
              children: [
                Expanded(
                  child: Text(
                    widget.title,
                    style: textCallout.copyWith(
                      color: typographyPrimary(theme),
                    ),
                  ),
                ),
                AnimatedRotation(
                  duration: _duration,
                  turns: _expanded ? .25 : 0,
                  child: SvgPicture.asset(
                    'assets/icons/accordion-state.svg',
                    colorFilter: .mode(typographyLabelsAndIcons(theme), .srcIn),
                  ),
                ),
              ],
            ),
          ),
          AnimatedCrossFade(
            duration: _duration,
            firstChild: Container(),
            secondChild: Text(
              widget.content,
              style: textBodyReg.copyWith(color: typographySecondary(theme)),
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
