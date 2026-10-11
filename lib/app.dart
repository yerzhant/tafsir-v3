import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tafsir/aayaat/db/aayaat_db.dart';
import 'package:tafsir/aayaat/domain/player.dart';
import 'package:tafsir/common/db/db_service.dart';
import 'package:tafsir/common/ui/app_error_widget.dart';
import 'package:tafsir/common/ui/app_theme.dart';
import 'package:tafsir/init/cubit/init_cubit.dart';
import 'package:tafsir/init/db/init_db.dart';
import 'package:tafsir/init/ui/progress_widget.dart';
import 'package:tafsir/main/db/main_db.dart';
import 'package:tafsir/main/ui/main_widget.dart';
import 'package:tafsir/search/db/search_db.dart';
import 'package:tafsir/settings/cubit/settings_cubit.dart';
import 'package:tafsir/settings/db/settings_db.dart';
import 'package:tafsir/theme/cubit/theme_cubit.dart';
import 'package:tafsir/theme/db/theme_db.dart';

const appTitle = 'Тафсир Azan.ru';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiRepositoryProvider(
      providers: [
        RepositoryProvider(
          create: (context) => DbService(),
          dispose: (db) async => await db.close(),
        ),
        RepositoryProvider(
          create: (context) => Player(),
          dispose: (player) => player.deinit(),
        ),

        RepositoryProvider(create: (context) => MainDb(context.read())),
        RepositoryProvider(create: (context) => ThemeDb(context.read())),
        RepositoryProvider(create: (context) => SearchDb(context.read())),
        RepositoryProvider(create: (context) => SettingsDb(context.read())),
      ],
      child: MultiBlocProvider(
        providers: [
          BlocProvider(create: (context) => ThemeCubit(context.read())),
          BlocProvider(create: (context) => SettingsCubit(context.read())),
        ],
        child: BlocBuilder<ThemeCubit, ThemeState>(
          builder: (context, themeState) {
            return MaterialApp(
              title: appTitle,
              color: Colors.white,
              theme: .new(
                bottomSheetTheme: .new(
                  backgroundColor: bgPrimary(themeState.theme),
                  dragHandleColor: typographyTertirary(themeState.theme),
                ),
                textSelectionTheme: .new(
                  cursorColor: brandPrimary(themeState.theme),
                  selectionHandleColor: brandPrimary(themeState.theme),
                ),
                sliderTheme: .new(
                  overlayShape: .noOverlay,
                  trackShape: const RectangularSliderTrackShape(),
                ),
                scaffoldBackgroundColor: bgPrimary(themeState.theme),
                brightness: themeState.theme.brightness,
              ),
              home: MultiRepositoryProvider(
                providers: [
                  RepositoryProvider(
                    create: (context) => InitDb(context.read()),
                  ),
                  RepositoryProvider(
                    create: (context) => AayaatDb(context.read()),
                  ),
                ],
                child: BlocProvider(
                  create: (context) => InitCubit(
                    context.read(),
                    context.read(),
                    context.read(),
                    context.read(),
                    context.read(),
                    context.read(),
                    context.read(),
                  )..init(),
                  child: Scaffold(
                    body: BlocBuilder<InitCubit, InitState>(
                      builder: (context, state) {
                        if (themeState.error != null) {
                          return AppErrorWidget(
                            error: themeState.error!,
                            onPressed: context.read<InitCubit>().init,
                          );
                        }

                        final settings = context.read<SettingsCubit>().state;

                        if (settings.error != null) {
                          return AppErrorWidget(
                            error: settings.error!,
                            onPressed: context.read<InitCubit>().init,
                          );
                        }

                        return switch (state) {
                          InitStateInitializing(:final progress) =>
                            ProgressWidget(value: progress),

                          InitStateInitialized() => MainWidget(
                            theme: themeState.theme,
                          ),

                          InitStateFailure(:final error) => AppErrorWidget(
                            error: error,
                            onPressed: context.read<InitCubit>().init,
                          ),
                        };
                      },
                    ),
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
