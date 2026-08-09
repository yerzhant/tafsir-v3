import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tafsir/aayaat/cubit/aayaat_cubit.dart';
import 'package:tafsir/aayaat/db/aayaat_db.dart';
import 'package:tafsir/aayaat/domain/ayah_position.dart';
import 'package:tafsir/aayaat/ui/ayah_list.dart';
import 'package:tafsir/aayaat/ui/surah_header.dart';
import 'package:tafsir/main/db/main_db.dart';
import 'package:tafsir/main/domain/surah.dart';
import 'package:tafsir/settings/cubit/settings_cubit.dart';
import 'package:tafsir/theme/cubit/theme_cubit.dart';

class SurahPage extends StatelessWidget {
  const SurahPage._(this.surah, this.ayahPosition);

  final Surah surah;
  final AyahPosition ayahPosition;

  static void open(
    BuildContext context,
    Surah surah,
    AyahPosition ayahPosition,
  ) => Navigator.push(
    context,
    MaterialPageRoute(
      builder: (context) => SurahPage._(surah, ayahPosition),
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<ThemeCubit, ThemeState>(
        builder: (context, themeState) {
          final theme = themeState.theme;

          return SafeArea(
            child: MultiRepositoryProvider(
              providers: [
                RepositoryProvider(
                  create: (context) => MainDb(context.read()),
                ),
                RepositoryProvider(
                  create: (context) => AayaatDb(context.read()),
                ),
              ],
              child: MultiBlocProvider(
                providers: [
                  BlocProvider(create: (context) => SettingsCubit()),
                  BlocProvider(
                    create: (context) => AayaatCubit(
                      surah,
                      ayahPosition,
                      context.read(),
                      context.read(),
                    )..init(),
                  ),
                ],
                child: Column(
                  children: [
                    SurahHeader(
                      theme: theme,
                      number: surah.number,
                      name: surah.name,
                      translation: surah.translation,
                      onInfo: () {},
                      onSuwar: () {},
                      onTheme: () {},
                      onSettings: () {},
                      onGoToAyah: () {},
                    ),
                    Expanded(child: AyahList(theme: theme)),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
