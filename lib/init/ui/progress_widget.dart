import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tafsir/common/domain/scope_functions.dart';
import 'package:tafsir/common/ui/app_theme.dart';
import 'package:tafsir/theme/cubit/theme_cubit.dart';

class ProgressWidget extends StatelessWidget {
  const ProgressWidget({super.key, this.value});

  final double? value;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ThemeCubit, ThemeState>(
      builder: (context, state) {
        return Container(
          color: bgPrimary(state.theme),
          width: .infinity,
          child: Column(
            mainAxisAlignment: .center,
            spacing: 20,
            children: [
              if (value != null)
                Text(
                  'Инициализация',
                  style: textBodyMedium.copyWith(
                    color: typographyPrimary(state.theme),
                  ),
                ),
              CircularProgressIndicator(
                backgroundColor: bgSecondary(state.theme),
                value: value?.let((it) => it < 0 ? null : it / 100),
              ),
              ?value?.let(
                (it) => Text(
                  it < 0 ? '' : '${it.toStringAsFixed(1)} %',
                  style: textBodyMedium.copyWith(
                    color: typographyPrimary(state.theme),
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}

// @Preview(group: 'Progress Widget', name: 'Light')
// Widget previewLight() => sizedWrapper(
//   const ProgressWidget(theme: .light, value: 12.3),
//   width: 200,
//   hight: 200,
//   padding: 0,
// );

// @Preview(group: 'Progress Widget', name: 'Dark')
// Widget previewDark() => sizedWrapper(
//   const ProgressWidget(theme: .dark, value: 12.3),
//   width: 200,
//   hight: 200,
//   padding: 0,
// );

// @Preview(group: 'Progress Widget', name: 'Brown Light')
// Widget previewBrownLight() => sizedWrapper(
//   const ProgressWidget(theme: .brownLight, value: 12.3),
//   width: 200,
//   hight: 200,
//   padding: 0,
// );

// @Preview(group: 'Progress Widget', name: 'Brown Dark')
// Widget previewBrownDark() => sizedWrapper(
//   const ProgressWidget(theme: .brownDark, value: 12.3),
//   width: 200,
//   hight: 200,
//   padding: 0,
// );
