import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tafsir/common/ui/app_theme.dart';
import 'package:tafsir/common/ui/tab_button.dart';
import 'package:tafsir/main/cubit/tab_cubit.dart';

class TabBar extends StatelessWidget {
  const TabBar({super.key, required this.theme, required this.state});

  final AppTheme theme;
  final TabState state;

  @override
  Widget build(BuildContext context) {
    final bgColor = switch (theme) {
      .light => bgTertiraryLight,
      .dark => bgTertiraryDark,
      .brownLight => bgTertiraryBrownLight,
      .brownDark => bgTertiraryBrownDark,
    };

    final tabCubit = context.read<TabCubit>();

    return Padding(
      padding: const .only(right: 20, left: 20, bottom: 10),
      child: ClipRRect(
        borderRadius: .circular(100),
        child: BackdropFilter(
          filter: .blur(sigmaX: 20, sigmaY: 20),
          child: Container(
            decoration: BoxDecoration(
              borderRadius: .circular(100),
              color: bgColor,
            ),
            child: Padding(
              padding: const .all(4),
              child: Row(
                spacing: 4,
                mainAxisAlignment: .spaceEvenly,
                children: [
                  TabButton(
                    theme: theme,
                    title: 'Суры',
                    onTap: tabCubit.suwar,
                    isActive: state == const .suwar(),
                  ),
                  TabButton(
                    theme: theme,
                    title: 'Джуз',
                    onTap: tabCubit.adjzaa,
                    isActive: state == const .adjzaa(),
                  ),
                  TabButton(
                    theme: theme,
                    title: 'Закладки',
                    onTap: tabCubit.bookmarks,
                    isActive: state == const .bookmarks(),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

// @Preview(group: 'TabBar', size: .new(400, 500), name: 'Light')
// Widget previewLight() => Masjid(
//   theme: .light,
//   child: BlocProvider(
//     create: (context) => TabCubit(),
//     child: BlocBuilder<TabCubit, TabState>(
//       builder: (context, state) {
//         return Column(
//           mainAxisAlignment: .center,
//           children: [
//             TabBar(
//               theme: .light,
//               state: state,
//             ),
//           ],
//         );
//       },
//     ),
//   ),
// );
