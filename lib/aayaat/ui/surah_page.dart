import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tafsir/aayaat/cubit/aayaat_cubit.dart';
import 'package:tafsir/aayaat/cubit/player_cubit.dart';
import 'package:tafsir/aayaat/cubit/scroll_position_cubit.dart';
import 'package:tafsir/aayaat/db/aayaat_db.dart';
import 'package:tafsir/aayaat/domain/ayah_position.dart';
import 'package:tafsir/aayaat/ui/aayaat_list.dart';
import 'package:tafsir/aayaat/ui/go_to_aayah.dart';
import 'package:tafsir/aayaat/ui/scroll_position_widget.dart';
import 'package:tafsir/aayaat/ui/short_suwar_list.dart';
import 'package:tafsir/aayaat/ui/surah_header.dart';
import 'package:tafsir/aayaat/ui/surah_info_card.dart';
import 'package:tafsir/aayaat/ui/surah_navigator.dart';
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
    this._ayahPosition,
    this._surahNumber,
    this._mainCubit,
    this._suwar,
  );

  final AyahPosition _ayahPosition;
  final SurahNumber _surahNumber;
  final MainCubit _mainCubit;
  final List<Surah> _suwar;

  static void open(
    BuildContext context,
    MainCubit mainCubit,
    List<Surah> suwar,
    SurahNumber surahNumber,
    AyahPosition ayahPosition,
  ) => Navigator.push(
    context,
    MaterialPageRoute(
      builder: (context) => MultiRepositoryProvider(
        providers: [
          RepositoryProvider(create: (context) => MainDb(context.read())),
          RepositoryProvider(create: (context) => AayaatDb(context.read())),
        ],
        child: MultiBlocProvider(
          providers: [
            BlocProvider(
              create: (context) => AayaatCubit(
                context.read(),
                context.read(),
                mainCubit,
                surahNumber,
              )..init(),
            ),
            BlocProvider(create: (context) => PlayerCubit(context.read())),
            BlocProvider(
              create: (context) => ScrollPositionCubit(
                suwar[surahNumber - 1].quantity,
                ayahPosition.number,
              ),
            ),
          ],
          child: SurahPage._(ayahPosition, surahNumber, mainCubit, suwar),
        ),
      ),
    ),
  );

  @override
  State<SurahPage> createState() => _SurahPageState();
}

class _SurahPageState extends State<SurahPage> with WidgetsBindingObserver {
  final _scaffoldKey = GlobalKey<ScaffoldState>();

  final _controller = ScrollController();

  var _doNotSwitchOffScreen = false;

  var _enableUI = true;

  @override
  void initState() {
    super.initState();

    WidgetsBinding.instance.addObserver(this);

    SystemChrome.setEnabledSystemUIMode(.immersiveSticky);
  }

  @override
  void dispose() {
    WakelockPlus.disable();

    if (_enableUI) SystemChrome.setEnabledSystemUIMode(.edgeToEdge);

    WidgetsBinding.instance.removeObserver(this);

    _controller.dispose();

    super.dispose();
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    super.didChangeAppLifecycleState(state);

    if (state == .paused || state == .detached) {
      context.read<AayaatCubit>().savePosition(
        context.read<ScrollPositionCubit>().state.minVisible,
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    final themeState = context.read<ThemeCubit>().state;

    _doNotSwitchOffScreen = themeState.doNotSwitchOffScreen;

    if (_doNotSwitchOffScreen) WakelockPlus.enable();

    return Scaffold(
      key: _scaffoldKey,
      body: BlocBuilder<AayaatCubit, AayaatState>(
        builder: (context, state) {
          return switch (state) {
            AayaatStateSuccess() => _success(context, state),
            AayaatStateInProgress() => const ProgressWidget(),
            AayaatStateFailure(:final error) => AppErrorWidget(
              onPressed: context.read<AayaatCubit>().init,
              error: error,
            ),
          };
        },
      ),
      drawer: Drawer(
        child: ShortSuwarList(
          suwar: widget._suwar,
          mainCubit: widget._mainCubit,
          onOpenSurah: () => _enableUI = false,
        ),
      ),
    );
  }

  Widget _success(BuildContext context, AayaatStateSuccess state) {
    return BlocListener<ThemeCubit, ThemeState>(
      listener: (context, state) {
        WakelockPlus.toggle(enable: state.doNotSwitchOffScreen);
      },
      child: PopScope(
        onPopInvokedWithResult: (didPop, result) {
          context.read<AayaatCubit>().savePosition(
            context.read<ScrollPositionCubit>().state.minVisible,
          );
        },

        child: Builder(
          builder: (context) {
            return Stack(
              children: [
                CustomScrollView(
                  controller: _controller,
                  slivers: [
                    SliverFloatingHeader(
                      child: SurahHeader(
                        surah: state.surah,
                        onTheme: () => _showTheme(context),
                        onGoToAyah: () => _goToAayah(context),
                        onSettings: () async {
                          WakelockPlus.disable();
                          await SettingsPage.open(context);
                          if (_doNotSwitchOffScreen) WakelockPlus.enable();
                        },
                        onInfo: () => _showInfo(context, state.surah.info),
                        onSuwar: () => _scaffoldKey.currentState!.openDrawer(),
                      ),
                    ),

                    SliverPadding(
                      sliver: AayaatList(
                        surah: state.surah,
                        aayaat: state.aayaat,
                        bookmarks: state.bookmarks,
                        scrollController: _controller,
                        ayahPosition: widget._ayahPosition,
                      ),
                      padding: const .symmetric(horizontal: 20, vertical: 12),
                    ),

                    SliverPadding(
                      sliver: SliverToBoxAdapter(
                        child: SurahNavigator(
                          suwar: widget._suwar,
                          number: state.surah.number,
                          mainCubit: widget._mainCubit,
                          onOpenSurah: () => _enableUI = false,
                          onShowSuwar: () {
                            _scaffoldKey.currentState!.openDrawer();
                          },
                        ),
                      ),
                      padding: const .only(right: 20, left: 20, bottom: 20),
                    ),
                  ],
                ),

                ScrollPositionWidget(quantity: state.surah.quantity),
              ],
            );
          },
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
      showDragHandle: true,
      isScrollControlled: true,
      builder: (ctx) {
        return SingleChildScrollView(
          padding: .only(
            right: 20,
            left: 20,
            bottom: MediaQuery.of(ctx).viewInsets.bottom + 20,
          ),
          child: GoToAayah(
            suwar: widget._suwar,
            mainCubit: widget._mainCubit,
            surahNumber: widget._surahNumber,
            onGoingToSurah: () => _enableUI = false,
            onGoTo: context.read<AayaatCubit>().goToAayah,
            aayahNumber: context.read<ScrollPositionCubit>().state.minVisible,
          ),
        );
      },
    );
  }
}
