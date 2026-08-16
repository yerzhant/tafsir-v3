import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tafsir/common/ui/app_container.dart';
import 'package:tafsir/common/ui/app_error_widget.dart';
import 'package:tafsir/common/ui/app_theme.dart';
import 'package:tafsir/common/ui/masjid.dart';
import 'package:tafsir/main/cubit/main_cubit.dart';
import 'package:tafsir/main/ui/adjzaa_list.dart';
import 'package:tafsir/main/ui/bookmarks_list.dart';
import 'package:tafsir/main/ui/header.dart';
import 'package:tafsir/main/ui/last_read_list.dart';
import 'package:tafsir/main/ui/suwar_list.dart';
import 'package:tafsir/main/ui/tab_bar.dart';

class MainWidget extends StatelessWidget {
  const MainWidget({super.key, required this.theme});

  final AppTheme theme;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => MainCubit(context.read())..init(),
      child: BlocBuilder<MainCubit, MainState>(
        builder: (context, state) {
          return switch (state) {
            MainStateSuccess() => _Success(theme: theme, state: state),

            MainStateFailure(:final error) => AppErrorWidget(
              error: error,
              onPressed: context.read<MainCubit>().init,
            ),
          };
        },
      ),
    );
  }
}

class _Success extends StatelessWidget {
  const _Success({
    required this.theme,
    required this.state,
  });

  final AppTheme theme;
  final MainStateSuccess state;

  @override
  Widget build(BuildContext context) {
    return Masjid(
      theme: theme,
      child: SafeArea(
        child: Column(
          children: [
            Header(theme: theme),
            AppTabBar(theme: theme, tab: state.tab),
            Expanded(
              child: AppContainer(
                theme: theme,
                child: Column(
                  children: [
                    if (state.lastReads.isNotEmpty)
                      LastReadList(
                        theme: theme,
                        suwar: state.suwar,
                        items: state.lastReads,
                      ),

                    Expanded(
                      child: switch (state.tab) {
                        .suwar => SuwarList(
                          theme: theme,
                          suwar: state.suwar,
                          muqaddimat: state.muqaddimat,
                          hasTopPadding: state.lastReads.isEmpty,
                        ),

                        .adjzaa => AdjzaaList(
                          theme: theme,
                          suwar: state.suwar,
                          items: state.adjzaa,
                          hasTopPadding: state.lastReads.isEmpty,
                        ),

                        .bookmarks => BookmarksList(
                          theme: theme,
                          suwar: state.suwar,
                          items: state.bookmarks,
                          hasTopPadding: state.lastReads.isEmpty,
                        ),
                      },
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
