import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:tafsir/common/ui/app_error_widget.dart';
import 'package:tafsir/common/ui/app_theme.dart';
import 'package:tafsir/init/ui/progress_widget.dart';
import 'package:tafsir/main/cubit/main_cubit.dart';
import 'package:tafsir/main/domain/surah.dart';
import 'package:tafsir/search/cubit/search_cubit.dart';
import 'package:tafsir/search/ui/found_item_card.dart';
import 'package:tafsir/search/ui/search_tab_bar.dart';
import 'package:tafsir/theme/cubit/theme_cubit.dart';

class SearchWidget extends StatefulWidget {
  const SearchWidget({
    super.key,
    required this.suwar,
    required this.mainCubit,
    required this.viewBottom,
  });

  final double viewBottom;
  final List<Surah> suwar;
  final MainCubit mainCubit;

  @override
  State<SearchWidget> createState() => _SearchWidgetState();
}

class _SearchWidgetState extends State<SearchWidget> {
  final _controller = TextEditingController();

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => SearchCubit(context.read()),
      child: BlocBuilder<ThemeCubit, ThemeState>(
        builder: (context, themeState) {
          return Column(
            spacing: 12,
            children: [
              _SearchField(theme: themeState.theme, controller: _controller),

              SearchTabBar(
                theme: themeState.theme,
                onChanged: (value) => context.read<SearchCubit>().setSearchIn(
                  value,
                  .new(_controller.text),
                ),
              ),

              Expanded(
                child: BlocBuilder<SearchCubit, SearchState>(
                  builder: (context, state) {
                    if (state.error != null) {
                      return SingleChildScrollView(
                        child: Padding(
                          padding: const .only(bottom: 20),
                          child: AppErrorWidget(
                            error: state.error!,
                            horizontalPadding: 0,
                            onPressed: context.read<SearchCubit>().clearError,
                          ),
                        ),
                      );
                    }

                    if (state.searching) {
                      return const ProgressWidget();
                    }

                    return ListView.separated(
                      itemCount: state.items.length,
                      padding: .only(
                        bottom: widget.viewBottom == 0
                            ? MediaQuery.paddingOf(context).bottom
                            : 20,
                      ),
                      itemBuilder: (context, index) => FoundItemCard(
                        suwar: widget.suwar,
                        theme: themeState.theme,
                        item: state.items[index],
                        mainCubit: widget.mainCubit,
                        key: .new(index.toString()),
                      ),
                      separatorBuilder: (context, index) => const SizedBox(
                        height: 8,
                      ),
                    );
                  },
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}

class _SearchField extends StatelessWidget {
  const _SearchField({
    required this.theme,
    required this.controller,
  });

  final AppTheme theme;
  final TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const .all(12),
      decoration: BoxDecoration(
        borderRadius: .circular(100),
        color: bgSecondary(theme),
      ),
      child: Row(
        spacing: 12,
        children: [
          GestureDetector(
            onTap: () => context.read<SearchCubit>().search(
              .new(controller.text),
            ),
            child: SvgPicture.asset(
              width: 28,
              'assets/icons/magnifying-glass.svg',
              colorFilter: .mode(brandPrimary(theme), .srcIn),
            ),
          ),
          Expanded(
            child: TextField(
              autofocus: true,
              controller: controller,
              style: textBodyReg.copyWith(color: typographyPrimary(theme)),
              decoration: InputDecoration.collapsed(
                hintText: 'Введите фразу',
                hintStyle: textBodyMedium.copyWith(
                  color: typographyTertirary(theme),
                ),
              ),
              onChanged: (value) => context.read<SearchCubit>().delayedSearch(
                .new(value),
              ),
            ),
          ),
          GestureDetector(
            onTap: controller.clear,
            child: SvgPicture.asset(
              width: 28,
              'assets/icons/x.svg',
              colorFilter: .mode(typographyPrimary(theme), .srcIn),
            ),
          ),
        ],
      ),
    );
  }
}

// @Preview(name: 'Search')
// Widget previewLight() => sizedWrapper(
//   themeWrapper(const SearchWidget()),
//   width: 400,
//   hight: 400,
// );
