import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tafsir/common/ui/app_container.dart';
import 'package:tafsir/common/ui/info_page_header.dart';
import 'package:tafsir/common/ui/masjid.dart';
import 'package:tafsir/how_to_use/ui/accordion_item.dart';
import 'package:tafsir/theme/cubit/theme_cubit.dart';

class HowToUsePage extends StatelessWidget {
  const HowToUsePage._();

  static void open(BuildContext context) => Navigator.push(
    context,
    MaterialPageRoute(
      builder: (context) => const HowToUsePage._(),
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<ThemeCubit, ThemeState>(
        builder: (context, state) {
          return Masjid(
            theme: state.theme,
            child: SafeArea(
              child: Column(
                children: [
                  InfoPageHeader(theme: state.theme, title: 'Как пользоваться'),
                  Expanded(
                    child: AppContainer(
                      theme: state.theme,
                      child: ListView.separated(
                        padding: const .all(20),
                        itemCount: _items.length,
                        itemBuilder: (context, index) {
                          final item = _items[index];

                          return AccordionItem(
                            theme: state.theme,
                            title: item.title,
                            content: item.content,
                          );
                        },
                        separatorBuilder: (context, index) => const SizedBox(
                          height: 8,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}

class _Item {
  final String title;
  final String content;

  const _Item(this.title, this.content);
}

const _items = [
  _Item('123', 'xxx'),
  _Item('123', 'xxx'),
  _Item('123', 'xxx'),
];
