import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tafsir/aayaat/cubit/aayaat_cubit.dart';
import 'package:tafsir/aayaat/cubit/player_cubit.dart';
import 'package:tafsir/aayaat/cubit/scroll_position_cubit.dart';
import 'package:tafsir/aayaat/db/aayaat_db.dart';
import 'package:tafsir/aayaat/domain/ayah_position.dart';
import 'package:tafsir/aayaat/ui/ayah_list.dart';
import 'package:tafsir/aayaat/ui/short_suwar_list.dart';
import 'package:tafsir/aayaat/ui/surah_header.dart';
import 'package:tafsir/aayaat/ui/surah_info_card.dart';
import 'package:tafsir/common/ui/app_error_widget.dart';
import 'package:tafsir/init/ui/progress_widget.dart';
import 'package:tafsir/main/cubit/main_cubit.dart';
import 'package:tafsir/main/db/main_db.dart';
import 'package:tafsir/main/domain/surah.dart';
import 'package:tafsir/settings/ui/settings_page.dart';
import 'package:tafsir/theme/cubit/theme_cubit.dart';
import 'package:tafsir/theme/ui/theme_settings.dart';
import 'package:wakelock_plus/wakelock_plus.dart';

class SurahPage extends StatefulWidget {
  const SurahPage._(
    this._suwar,
    this._mainCubit,
    this._surahNumber,
    this._ayahPosition,
  );

  final List<Surah> _suwar;
  final MainCubit _mainCubit;
  final SurahNumber _surahNumber;
  final AyahPosition _ayahPosition;

  static void open(
    BuildContext context,
    MainCubit mainCubit,
    List<Surah> suwar,
    SurahNumber surahNumber,
    AyahPosition ayahPosition,
  ) => Navigator.push(
    context,
    MaterialPageRoute(
      builder: (context) => SurahPage._(
        suwar,
        mainCubit,
        surahNumber,
        ayahPosition,
      ),
    ),
  );

  @override
  State<SurahPage> createState() => _SurahPageState();
}

class _SurahPageState extends State<SurahPage> {
  final _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void dispose() {
    WakelockPlus.disable();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final themeState = context.read<ThemeCubit>().state;

    if (themeState.doNotSwitchOffScreen) {
      WakelockPlus.enable();
    }

    return Scaffold(
      key: _scaffoldKey,
      body: MultiRepositoryProvider(
        providers: [
          RepositoryProvider(create: (context) => MainDb(context.read())),
          RepositoryProvider(create: (context) => AayaatDb(context.read())),
        ],
        child: BlocProvider(
          create: (context) => AayaatCubit(
            context.read(),
            context.read(),
            widget._mainCubit,
            widget._surahNumber,
            widget._ayahPosition,
          )..init(),
          child: BlocBuilder<AayaatCubit, AayaatState>(
            builder: (context, state) {
              return switch (state) {
                AayaatStateInProgress() => const ProgressWidget(),

                AayaatStateSuccess() => _success(context, state),

                AayaatStateFailure(:final error) => AppErrorWidget(
                  error: error,
                  onPressed: context.read<AayaatCubit>().init,
                ),
              };
            },
          ),
        ),
      ),
      drawer: SafeArea(
        child: Drawer(
          child: ShortSuwarList(
            suwar: widget._suwar,
            mainCubit: widget._mainCubit,
          ),
        ),
      ),
    );
  }

  Widget _success(BuildContext context, AayaatStateSuccess state) {
    return BlocListener<ThemeCubit, ThemeState>(
      listener: (context, state) {
        WakelockPlus.toggle(enable: state.doNotSwitchOffScreen);
      },
      child: MultiBlocProvider(
        providers: [
          BlocProvider(
            create: (context) => ScrollPositionCubit(
              state.scrollToPosition.number,
            ),
          ),
          BlocProvider(create: (context) => PlayerCubit(context.read())),
        ],
        child: Column(
          children: [
            SurahHeader(
              surah: state.surah,
              onTheme: () => _showTheme(context),
              onGoToAyah: () => _goToAayah(context),
              onSettings: () => SettingsPage.open(context),
              onInfo: () => _showInfo(context, state.surah.info),
              onSuwar: () => _scaffoldKey.currentState!.openDrawer(),
            ),
            Expanded(
              child: Builder(
                builder: (context) {
                  return AyahList(
                    state: state,
                    suwar: widget._suwar,
                    cubit: context.read(),
                    mainCubit: widget._mainCubit,
                    positionCubit: context.read(),
                    onShowSuwar: () => _scaffoldKey.currentState!.openDrawer(),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  void _showTheme(BuildContext context) {
    showModalBottomSheet(
      context: context,
      useSafeArea: true,
      showDragHandle: true,
      isScrollControlled: true,
      builder: (context) => const ThemeSettings(),
    );
  }

  void _showInfo(BuildContext context, SurahInfo info) {
    showModalBottomSheet(
      context: context,
      useSafeArea: true,
      showDragHandle: true,
      isScrollControlled: true,
      builder: (context) => SurahInfoCard(info: info),
    );
  }

  void _goToAayah(BuildContext context) {
    showModalBottomSheet(
      context: context,
      useSafeArea: true,
      showDragHandle: true,
      isScrollControlled: true,
      builder: (ctx) => SafeArea(
        child: Padding(
          padding: .only(
            right: 20,
            left: 20,
            bottom: MediaQuery.of(ctx).viewInsets.bottom + 20,
          ),
          // child: GoToAayah(
          //   onSet: (aayah) {
          //     context.read<AayaatCubit>().goToAayah(.new(aayah));
          //     Navigator.pop(context);
          //   },
          // ),
        ),
      ),
    );
  }
}
