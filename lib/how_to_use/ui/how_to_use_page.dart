import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tafsir/common/ui/app_container.dart';
import 'package:tafsir/common/ui/info_page_header.dart';
import 'package:tafsir/common/ui/masjid.dart';
import 'package:tafsir/how_to_use/domain/how_to_list.dart';
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
    final theme = context.read<ThemeCubit>().state.theme;

    return Scaffold(
      body: Masjid(
        theme: theme,
        child: SafeArea(
          child: Column(
            children: [
              InfoPageHeader(theme: theme, title: 'Как пользоваться'),
              Expanded(
                child: AppContainer(
                  theme: theme,
                  child: ListView.separated(
                    padding: const .all(20),
                    itemCount: howToList.length,
                    itemBuilder: (context, index) {
                      final item = howToList[index];

                      return AccordionItem(
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
      ),
    );
  }
}
