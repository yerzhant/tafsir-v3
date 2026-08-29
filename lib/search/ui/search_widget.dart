import 'package:flutter/material.dart';
import 'package:flutter/widget_previews.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:tafsir/common/ui/app_theme.dart';
import 'package:tafsir/common/ui/preview.dart';
import 'package:tafsir/search/cubit/search_cubit.dart';
import 'package:tafsir/search/ui/found_item_card.dart';
import 'package:tafsir/search/ui/search_tab_bar.dart';
import 'package:tafsir/theme/cubit/theme_cubit.dart';

class SearchWidget extends StatefulWidget {
  const SearchWidget({super.key});

  @override
  State<SearchWidget> createState() => _SearchWidgetState();
}

class _SearchWidgetState extends State<SearchWidget> {
  final _controller = TextEditingController(text: '1234');

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ThemeCubit, ThemeState>(
      builder: (context, themeState) {
        return BlocProvider(
          create: (context) => SearchCubit(),
          child: Column(
            spacing: 12,
            children: [
              _SearchField(theme: themeState.theme, controller: _controller),

              SearchTabBar(theme: themeState.theme),

              Expanded(
                child: BlocBuilder<SearchCubit, SearchState>(
                  builder: (context, state) {
                    return ListView.separated(
                      itemCount: state.items.length,
                      itemBuilder: (context, index) => FoundItemCard(
                        theme: themeState.theme,
                        item: state.items[index],
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
          ),
        );
      },
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
          SvgPicture.asset(
            width: 28,
            'assets/icons/magnifying-glass.svg',
            colorFilter: .mode(brandPrimary(theme), .srcIn),
          ),
          Expanded(
            child: TextField(
              autofocus: true,
              controller: controller,
              style: textBodyReg.copyWith(color: typographyPrimary(theme)),
              decoration: const InputDecoration.collapsed(
                hintText: 'Введите фразу',
              ),
            ),
          ),
          SvgPicture.asset(
            width: 28,
            'assets/icons/x.svg',
            colorFilter: .mode(typographyPrimary(theme), .srcIn),
          ),
        ],
      ),
    );
  }
}

@Preview(name: 'Search')
Widget previewLight() => sizedWrapper(
  themeWrapper(const SearchWidget()),
  width: 400,
  hight: 400,
);
