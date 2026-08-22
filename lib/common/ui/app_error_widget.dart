import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tafsir/common/domain/error.dart';
import 'package:tafsir/common/ui/app_button.dart';
import 'package:tafsir/common/ui/app_theme.dart';
import 'package:tafsir/theme/cubit/theme_cubit.dart';

class AppErrorWidget extends StatelessWidget {
  const AppErrorWidget({
    super.key,
    this.size = .max,
    required this.error,
    required this.onPressed,
  });

  final AppError error;
  final MainAxisSize size;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ThemeCubit, ThemeState>(
      builder: (context, state) {
        return Container(
          color: bgPrimary(state.theme),
          padding: const .symmetric(horizontal: 20),
          width: .infinity,
          child: Column(
            mainAxisAlignment: .center,
            mainAxisSize: size,
            spacing: 16,
            children: [
              Column(
                spacing: 16,
                children: [
                  Text(
                    error.title,
                    textAlign: .center,
                    style: textBodyLarge.copyWith(
                      color: typographyPrimary(state.theme),
                      fontWeight: .w500,
                    ),
                  ),
                  Text(
                    error.message,
                    maxLines: 10,
                    overflow: .ellipsis,
                    style: textBodyReg.copyWith(
                      color: typographyPrimary(state.theme),
                    ),
                  ),
                ],
              ),

              AppButton(title: 'Закрыть', theme: state.theme, onTap: onPressed),
            ],
          ),
        );
      },
    );
  }
}

// @Preview(group: 'App Error Widget', name: 'Light')
// Widget previewLight() => sizedWrapper(
//   AppErrorWidget(
//     theme: .light,
//     error: const .general('long text long text long text long text long text long text long text long text long text long text long text long text long text long text long text long text long text long text long text long text long text long text long text long text long 111'),
//     onPressed: () => print('on pressed'),
//   ),
//   width: 200,
//   hight: 400,
//   padding: 0,
// );

// @Preview(group: 'App Error Widget', name: 'Dark')
// Widget previewDark() => sizedWrapper(
//   AppErrorWidget(
//     theme: .dark,
//     error: const .general('abc'),
//     onPressed: () => print('on pressed'),
//   ),
//   width: 200,
//   hight: 200,
//   padding: 0,
// );

// @Preview(group: 'App Error Widget', name: 'Brown Light')
// Widget previewBrownLight() => sizedWrapper(
//   AppErrorWidget(
//     theme: .brownLight,
//     error: const .general('abc'),
//     onPressed: () => print('on pressed'),
//   ),
//   width: 200,
//   hight: 200,
//   padding: 0,
// );

// @Preview(group: 'App Error Widget', name: 'Brown Dark')
// Widget previewBrownDark() => sizedWrapper(
//   AppErrorWidget(
//     theme: .brownDark,
//     error: const .general('abc'),
//     onPressed: () => print('on pressed'),
//   ),
//   width: 200,
//   hight: 200,
//   padding: 0,
// );
