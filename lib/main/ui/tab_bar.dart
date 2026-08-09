import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tafsir/common/ui/app_theme.dart';
import 'package:tafsir/common/ui/tab_button.dart';
import 'package:tafsir/main/cubit/main_cubit.dart';

class TabBar extends StatelessWidget {
  const TabBar({super.key, required this.theme, required this.tab});

  final AppTheme theme;
  final MainTab tab;

  @override
  Widget build(BuildContext context) {
    final mainCubit = context.read<MainCubit>();

    return Padding(
      padding: const .only(right: 20, left: 20, bottom: 10),
      child: ClipRRect(
        borderRadius: .circular(100),
        child: BackdropFilter(
          filter: .blur(sigmaX: 20, sigmaY: 20),
          child: Container(
            decoration: BoxDecoration(
              borderRadius: .circular(100),
              color: bgTertirary(theme),
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
                    onTap: mainCubit.suwar,
                    isActive: tab == .suwar,
                  ),
                  TabButton(
                    theme: theme,
                    title: 'Джуз',
                    onTap: mainCubit.adjzaa,
                    isActive: tab == .adjzaa,
                  ),
                  TabButton(
                    theme: theme,
                    title: 'Закладки',
                    onTap: mainCubit.bookmarks,
                    isActive: tab == .bookmarks,
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
//     create: (context) => MainCubit(),
//     child: BlocBuilder<MainCubit, MainState>(
//       builder: (context, state) {
//         return Column(
//           mainAxisAlignment: .center,
//           children: [
//             TabBar(
//               theme: .light,
//               tab: (state as MainStateSuccess).tab,
//             ),
//           ],
//         );
//       },
//     ),
//   ),
// );
