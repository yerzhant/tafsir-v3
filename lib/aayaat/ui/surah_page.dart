import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tafsir/aayaat/cubit/aayaat_cubit.dart';
import 'package:tafsir/aayaat/db/aayaat_db.dart';
import 'package:tafsir/aayaat/domain/ayah_position.dart';
import 'package:tafsir/aayaat/ui/ayah_list.dart';
import 'package:tafsir/aayaat/ui/surah_header.dart';
import 'package:tafsir/main/cubit/main_cubit.dart';
import 'package:tafsir/main/db/main_db.dart';
import 'package:tafsir/main/domain/surah.dart';
import 'package:tafsir/settings/cubit/settings_cubit.dart';

class SurahPage extends StatelessWidget {
  const SurahPage._(this._surah, this._ayahPosition, this._mainCubit);

  final Surah _surah;
  final AyahPosition _ayahPosition;
  final MainCubit _mainCubit;

  static void open(
    BuildContext context,
    Surah surah,
    AyahPosition ayahPosition,
    MainCubit mainCubit,
  ) => Navigator.push(
    context,
    MaterialPageRoute(
      builder: (context) => SurahPage._(surah, ayahPosition, mainCubit),
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
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
                  _surah,
                  _ayahPosition,
                  context.read(),
                  context.read(),
                  _mainCubit,
                )..init(),
              ),
            ],
            child: Column(
              children: [
                SurahHeader(
                  number: _surah.number,
                  name: _surah.name,
                  translation: _surah.translation,
                  onInfo: () {},
                  onSuwar: () {},
                  onTheme: () {},
                  onSettings: () {},
                  onGoToAyah: () {},
                ),
                const Expanded(child: AyahList()),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
