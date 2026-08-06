import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tafsir/common/db/db_service.dart';
import 'package:tafsir/common/ui/app_error_widget.dart';
import 'package:tafsir/init/cubit/init_cubit.dart';
import 'package:tafsir/init/ui/progress_widget.dart';
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
        child: MaterialApp(
          title: 'Тафсир',
          home: BlocProvider(
            create: (context) => InitCubit()..init(),
            child: BlocBuilder<ThemeCubit, ThemeState>(
              builder: (context, themeState) {
                return BlocBuilder<InitCubit, InitState>(
                  builder: (context, state) {
                    return switch (state) {
                      InitStateInitializing(:final progress) => ProgressWidget(
                        theme: themeState.theme,
                        value: progress,
                      ),

                      InitStateInitialized() => throw UnimplementedError(),

                      InitStateFailure(:final error) => AppErrorWidget(
                        error: error,
                        theme: themeState.theme,
                        onPressed: context.read<InitCubit>().init,
                      ),
                    };
                  },
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}
