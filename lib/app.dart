import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tafsir/aayaat/db/aayaat_db.dart';
import 'package:tafsir/common/db/db_service.dart';
import 'package:tafsir/common/ui/app_error_widget.dart';
import 'package:tafsir/common/ui/app_theme.dart';
import 'package:tafsir/init/cubit/init_cubit.dart';
import 'package:tafsir/init/db/init_db.dart';
import 'package:tafsir/init/ui/progress_widget.dart';
import 'package:tafsir/main/db/main_db.dart';
import 'package:tafsir/theme/cubit/theme_cubit.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return RepositoryProvider(
      create: (context) => DbService(),
      dispose: (db) async => await db.close(),
      child: BlocProvider(
        create: (context) => ThemeCubit(),
        child: BlocBuilder<ThemeCubit, ThemeState>(
          builder: (context, themeState) {
            return MaterialApp(
              title: 'Тафсир',
              theme: .new(
                progressIndicatorTheme: .new(
                  color: brandPrimary(themeState.theme),
                ),
              ),
              home: MultiRepositoryProvider(
                providers: [
                  RepositoryProvider(
                    create: (context) => InitDb(context.read()),
                  ),
                  RepositoryProvider(
                    create: (context) => MainDb(context.read()),
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
                  )..init(),
                  child: Scaffold(
                    body: BlocBuilder<InitCubit, InitState>(
                      builder: (context, state) {
                        return switch (state) {
                          InitStateInitializing(:final progress) =>
                            ProgressWidget(
                              theme: themeState.theme,
                              value: progress,
                            ),

                          InitStateInitialized() => const Center(
                            child: Text('OK!'),
                          ),

                          InitStateFailure(:final error) => AppErrorWidget(
                            error: error,
                            theme: themeState.theme,
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
