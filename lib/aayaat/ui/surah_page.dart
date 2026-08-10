import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tafsir/aayaat/cubit/aayaat_cubit.dart';
import 'package:tafsir/aayaat/db/aayaat_db.dart';
import 'package:tafsir/aayaat/domain/ayah_position.dart';
import 'package:tafsir/aayaat/ui/ayah_list.dart';
import 'package:tafsir/aayaat/ui/surah_header.dart';
import 'package:tafsir/aayaat/ui/surah_info_card.dart';
import 'package:tafsir/common/ui/app_error_widget.dart';
import 'package:tafsir/init/ui/progress_widget.dart';
import 'package:tafsir/main/cubit/main_cubit.dart';
import 'package:tafsir/main/db/main_db.dart';
import 'package:tafsir/main/domain/surah.dart';
import 'package:tafsir/settings/cubit/settings_cubit.dart';
import 'package:tafsir/theme/cubit/theme_cubit.dart';

class SurahPage extends StatelessWidget {
  const SurahPage._(
    this._mainCubit,
    this._surahNumber,
    this._ayahPosition,
  );

  final MainCubit _mainCubit;
  final SurahNumber _surahNumber;
  final AyahPosition _ayahPosition;

  static void open(
    BuildContext context,
    MainCubit mainCubit,
    SurahNumber surahNumber,
    AyahPosition ayahPosition,
  ) => Navigator.push(
    context,
    MaterialPageRoute(
      builder: (context) => SurahPage._(
        mainCubit,
        surahNumber,
        ayahPosition,
      ),
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
                  context.read(),
                  context.read(),
                  _mainCubit,
                  _surahNumber,
                  _ayahPosition,
                )..init(),
              ),
            ],
            child: BlocBuilder<AayaatCubit, AayaatState>(
              builder: (context, state) {
                return switch (state) {
                  AayaatStateInProgress() => const ProgressWidget(),

                  AayaatStateFailure(:final error) => AppErrorWidget(
                    error: error,
                    onPressed: context.read<AayaatCubit>().init,
                  ),

                  AayaatStateSuccess() => _success(context, state),
                };
              },
            ),
          ),
        ),
      ),
    );
  }

  Column _success(BuildContext context, AayaatStateSuccess state) {
    return Column(
      children: [
        SurahHeader(
          number: _surahNumber,
          name: state.surah.name,
          translation: state.surah.translation,
          onInfo: () => _showInfo(context, state.surah.info),
          onSuwar: () {},
          onTheme: () {},
          onSettings: () {},
          onGoToAyah: () {},
        ),
        Expanded(child: AyahList(state: state)),
      ],
    );
  }

  void _showInfo(BuildContext context, SurahInfo info) {
    showModalBottomSheet(
      context: context,
      useSafeArea: true,
      showDragHandle: true,
      isScrollControlled: true,
      builder: (context) => SurahInfoCard(
        info: info,
        theme: context.read<ThemeCubit>().state.theme,
      ),
    );
  }
}
