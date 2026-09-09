import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tafsir/aayaat/cubit/aayaat_cubit.dart';
import 'package:tafsir/aayaat/cubit/player_cubit.dart';
import 'package:tafsir/aayaat/cubit/scroll_position_cubit.dart';
import 'package:tafsir/aayaat/db/aayaat_db.dart';
import 'package:tafsir/aayaat/domain/ayah_position.dart';
import 'package:tafsir/aayaat/ui/ayah_list.dart';
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
  const SurahPage._(this._suwar, this._mainCubit);

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
                context,
                context.read(),
                context.read(),
                suwar,
                mainCubit,
                surahNumber,
                ayahPosition,
              )..init(),
            ),
            BlocProvider(create: (context) => ScrollPositionCubit()),
            BlocProvider(create: (context) => PlayerCubit(context.read())),
          ],
          child: SurahPage._(suwar, mainCubit),
        ),
      ),
    ),
  );

  @override
  State<SurahPage> createState() => _SurahPageState();
}

class _SurahPageState extends State<SurahPage> {
  final _scaffoldKey = GlobalKey<ScaffoldState>();

  final _controller = ScrollController();

  var _doNotSwitchOffScreen = false;

  @override
  void initState() {
    super.initState();
    SystemChrome.setEnabledSystemUIMode(.immersiveSticky);
    _controller.addListener(_onScroll);
  }

  @override
  void dispose() {
    _controller.removeListener(_onScroll);
    SystemChrome.setEnabledSystemUIMode(.edgeToEdge);
    WakelockPlus.disable();
    _controller.dispose();
    super.dispose();
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    context.read<AayaatCubit>().measureHeights();
  }

  void _onScroll() {
    // if (!_controller.hasClients || _controller.position.maxScrollExtent == 0) {
    //   return;
    // }

    context.read<ScrollPositionCubit>().update(.new(_controller.offset));
  }

  // void _navigateTo({required double offset, bool animate = true}) {
  //   if (animate) {
  //     _controller.animateTo(
  //       offset,
  //       curve: Curves.fastOutSlowIn,
  //       duration: const .new(milliseconds: 400),
  //     );
  //   } else {
  //     _controller.jumpTo(offset);
  //   }
  // }

  @override
  Widget build(BuildContext context) {
    final themeState = context.read<ThemeCubit>().state;

    _doNotSwitchOffScreen = themeState.doNotSwitchOffScreen;

    if (_doNotSwitchOffScreen) WakelockPlus.enable();

    return Scaffold(
      key: _scaffoldKey,
      body: BlocConsumer<AayaatCubit, AayaatState>(
        listener: (context, state) {
          if (state case AayaatStateSuccess(:final scrollProgressMax)) {
            context.read<ScrollPositionCubit>().updateMax(scrollProgressMax);
          }
        },
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
      drawer: Drawer(
        child: ShortSuwarList(
          suwar: widget._suwar,
          mainCubit: widget._mainCubit,
        ),
      ),
    );
  }

  Widget _success(BuildContext context, AayaatStateSuccess state) {
    if (state.inProgerss) return const ProgressWidget();

    return BlocListener<ThemeCubit, ThemeState>(
      listener: (context, state) {
        WakelockPlus.toggle(enable: state.doNotSwitchOffScreen);
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
                    padding: const .symmetric(horizontal: 20, vertical: 12),
                    sliver: AyahList(
                      state: state,
                      cubit: context.read(),
                    ),
                  ),

                  SliverPadding(
                    padding: const .only(right: 20, left: 20, bottom: 20),
                    sliver: SliverToBoxAdapter(
                      child: SurahNavigator(
                        suwar: widget._suwar,
                        number: state.surah.number,
                        mainCubit: widget._mainCubit,
                        onShowSuwar: () {
                          _scaffoldKey.currentState!.openDrawer();
                        },
                      ),
                    ),
                  ),
                ],
              ),

              ScrollPositionWidget(quantity: state.surah.quantity),
            ],
          );
        },
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
    // final aayahNumber = context.read<ScrollPositionCubit>().state.number;

    // showModalBottomSheet(
    //   context: context,
    //   useSafeArea: true,
    //   showDragHandle: true,
    //   isScrollControlled: true,
    //   builder: (ctx) {
    //     final viewBottom = MediaQuery.of(ctx).viewInsets.bottom;
    //     final bottom = viewBottom + (viewBottom > 0 ? 20 : 0);

    //     return SafeArea(
    //       child: SingleChildScrollView(
    //         padding: .only(right: 20, left: 20, bottom: bottom),
    //         child: GoToAayah(
    //           suwar: widget._suwar,
    //           aayahNumber: aayahNumber,
    //           mainCubit: widget._mainCubit,
    //           surahNumber: widget._surahNumber,
    //           onGoTo: context.read<AayaatCubit>().goToAayah,
    //         ),
    //       ),
    //     );
    //   },
    // );
  }
}
