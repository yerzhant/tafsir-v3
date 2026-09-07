import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:scrollview_observer/scrollview_observer.dart';
import 'package:tafsir/aayaat/cubit/aayaat_cubit.dart';
import 'package:tafsir/aayaat/cubit/player_cubit.dart';
import 'package:tafsir/aayaat/cubit/scroll_position_cubit.dart';
import 'package:tafsir/aayaat/db/aayaat_db.dart';
import 'package:tafsir/aayaat/domain/ayah_position.dart';
import 'package:tafsir/aayaat/ui/ayah_list.dart';
import 'package:tafsir/aayaat/ui/go_to_aayah.dart';
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

class _SurahPageState extends State<SurahPage> with WidgetsBindingObserver {
  final _scaffoldKey = GlobalKey<ScaffoldState>();

  final _scrollController = ScrollController();

  late final SliverObserverController _observerController;

  var _doNotSwitchOffScreen = false;

  BuildContext? _listContext;

  AayaatCubit? _aayaatCubit;

  AyahPosition? _position;

  @override
  void initState() {
    super.initState();

    _observerController = .new(controller: _scrollController);

    WidgetsBinding.instance.addObserver(this);
  }

  @override
  void dispose() {
    WidgetsBinding.instance.removeObserver(this);

    _scrollController.dispose();

    WakelockPlus.disable();

    super.dispose();
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    super.didChangeAppLifecycleState(state);

    if (state == .paused || state == .detached) {
      _aayaatCubit?.savePosition(_position!);
    }
  }

  void _scrollTo(AyahPosition position) async {
    await _observerController.animateTo(
      index: position.number - 1,
      sliverContext: _listContext,
      curve: Curves.easeInOutCubic,
      alignment: position.alignment,
      duration: const .new(milliseconds: 500),
    );
  }

  @override
  Widget build(BuildContext context) {
    final themeState = context.read<ThemeCubit>().state;

    _doNotSwitchOffScreen = themeState.doNotSwitchOffScreen;

    if (_doNotSwitchOffScreen) WakelockPlus.enable();

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
          child: BlocConsumer<AayaatCubit, AayaatState>(
            listener: (context, state) {
              if (state case AayaatStateSuccess(
                :final scrollToPosition,
                :final scrollToNewPosition,
              ) when scrollToNewPosition) {
                _scrollTo(scrollToPosition);
              }

              if (state case AayaatStateSuccess(
                :final scrollToPosition,
              ) when _position == null) {
                _aayaatCubit = context.read();

                _position = scrollToPosition;

                _observerController.initialIndexModel = .new(
                  index: _position!.number - 1,
                  alignment: _position!.alignment,
                );

                // Future.delayed(
                //   .new(milliseconds: 100),
                //   () => _observerController.jumpTo(index: 100),
                // );
              }
            },

            builder: (context, state) {
              return switch (state) {
                AayaatStateInProgress() => const ProgressWidget(),

                AayaatStateSuccess() => PopScope(
                  child: _success(context, state),
                  onPopInvokedWithResult: (didPop, result) =>
                      context.read<AayaatCubit>().savePosition(_position!),
                ),

                AayaatStateFailure(:final error) => AppErrorWidget(
                  error: error,
                  onPressed: context.read<AayaatCubit>().init,
                ),
              };
            },
          ),
        ),
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
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => ScrollPositionCubit(
            state.scrollToPosition.number,
          ),
        ),
        BlocProvider(create: (context) => PlayerCubit(context.read())),
      ],
      child: BlocListener<ThemeCubit, ThemeState>(
        listener: (context, state) {
          WakelockPlus.toggle(enable: state.doNotSwitchOffScreen);
        },
        child: Builder(
          builder: (context) {
            return SliverViewObserver(
              controller: _observerController,
              sliverContexts: () => [?_listContext],
              onObserve: (model) {
                // if (model is! ListViewObserveModel) return;

                // final first = model.firstChild!;

                // final leading = first.leadingMarginToViewport;
                // final trailing = first.trailingMarginToViewport;

                // var alignment = 0.0;

                // if (leading.abs() + trailing.abs() > 0) {
                //   alignment = leading.abs() / (leading.abs() + trailing.abs());
                // }

                // _position = .new(.new(first.index + 1), alignment);
                _position = .new(
                  .new(model.displayingChildIndexList.first + 1),
                  0,
                );

                context.read<ScrollPositionCubit>().updateAayahNumber(
                  _position!.number,
                );
              },
              child: CustomScrollView(
                controller: _scrollController,
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
                    padding: .only(
                      right: 20,
                      left: 20,
                      top: 12,
                      bottom: MediaQuery.paddingOf(context).bottom,
                    ),

                    sliver: AyahList(
                      state: state,
                      suwar: widget._suwar,
                      cubit: context.read(),
                      mainCubit: widget._mainCubit,
                      positionCubit: context.read(),
                      onShowSuwar: () {
                        _scaffoldKey.currentState!.openDrawer();
                      },
                      setListContext: (context) => _listContext = context,
                    ),
                  ),
                ],
              ),
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
    final aayahNumber = context.read<ScrollPositionCubit>().state.number;

    showModalBottomSheet(
      context: context,
      useSafeArea: true,
      showDragHandle: true,
      isScrollControlled: true,
      builder: (ctx) {
        final viewBottom = MediaQuery.of(ctx).viewInsets.bottom;
        final bottom = viewBottom + (viewBottom > 0 ? 20 : 0);

        return SafeArea(
          child: SingleChildScrollView(
            padding: .only(right: 20, left: 20, bottom: bottom),
            child: GoToAayah(
              suwar: widget._suwar,
              aayahNumber: aayahNumber,
              mainCubit: widget._mainCubit,
              surahNumber: widget._surahNumber,
              onGoTo: context.read<AayaatCubit>().goToAayah,
            ),
          ),
        );
      },
    );
  }
}
