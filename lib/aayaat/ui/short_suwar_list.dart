import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tafsir/aayaat/ui/short_surah_item.dart';
import 'package:tafsir/aayaat/ui/surah_page.dart';
import 'package:tafsir/common/ui/app_theme.dart';
import 'package:tafsir/main/cubit/main_cubit.dart';
import 'package:tafsir/main/domain/surah.dart';
import 'package:tafsir/theme/cubit/theme_cubit.dart';

class ShortSuwarList extends StatelessWidget {
  const ShortSuwarList({
    super.key,
    required this.suwar,
    required this.mainCubit,
  });

  final List<Surah> suwar;
  final MainCubit mainCubit;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ThemeCubit, ThemeState>(
      builder: (context, state) {
        return Container(
          color: bgPrimary(state.theme),
          child: ListView.separated(
            padding: const .all(20),
            itemCount: suwar.length,
            itemBuilder: (context, index) {
              final surah = suwar[index];

              return ShortSurahItem(
                theme: state.theme,
                surah: surah,
                onTap: () {
                  Navigator.pop(context);
                  Navigator.pop(context);
                  SurahPage.open(
                    context,
                    mainCubit,
                    suwar,
                    surah.number,
                    const .new(.new(1), 0),
                  );
                },
              );
            },
            separatorBuilder: (context, index) => const SizedBox(height: 8),
          ),
        );
      },
    );
  }
}
