import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tafsir/common/ui/app_theme.dart';
import 'package:tafsir/common/ui/tab_button.dart';
import 'package:tafsir/search/cubit/search_cubit.dart';

class SearchTabBar extends StatelessWidget {
  const SearchTabBar({super.key, required this.theme});

  final AppTheme theme;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const .all(4),
      decoration: BoxDecoration(
        color: bgSecondary(theme),
        borderRadius: .circular(100),
      ),
      child: BlocBuilder<SearchCubit, SearchState>(
        builder: (context, state) {
          return Row(
            children: [
              TabButton(
                theme: theme,
                title: 'Везде',
                isActive: state.searchIn == .everyWhere,
                onTap: () => context.read<SearchCubit>().setSearchIn(
                  .everyWhere,
                ),
              ),
              TabButton(
                theme: theme,
                title: 'Закладки',
                isActive: state.searchIn == .bookmarks,
                onTap: () => context.read<SearchCubit>().setSearchIn(
                  .bookmarks,
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
