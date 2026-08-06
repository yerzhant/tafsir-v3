import 'package:flutter/material.dart';
import 'package:tafsir/common/domain/error.dart';
import 'package:tafsir/common/ui/app_theme.dart';

class AppErrorWidget extends StatelessWidget {
  const AppErrorWidget({
    super.key,
    required this.theme,
    required this.error,
    required this.onPressed,
  });

  final AppTheme theme;
  final AppError error;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: bgPrimary(theme),
      padding: const .all(16),
      child: Column(
        mainAxisAlignment: .center,
        spacing: 12,
        children: [
          switch (error) {
            GeneralError(:final message) => _Message(
              theme: theme,
              header: 'Ошибка',
              message: message,
            ),
          },
          FilledButton(
            style: .new(
              backgroundColor: .all(bgSecondary(theme)),
              foregroundColor: .all(typographyPrimary(theme)),
            ),
            onPressed: onPressed,
            child: const Text('OK'),
          ),
        ],
      ),
    );
  }
}

class _Message extends StatelessWidget {
  const _Message({
    required this.theme,
    required this.header,
    required this.message,
  });

  final AppTheme theme;
  final String header;
  final String message;

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 4,
      children: [
        Text(
          header,
          textAlign: .center,
          style: textBodyLarge.copyWith(
            color: typographyPrimary(theme),
          ),
        ),
        Text(
          message,
          style: textBodyReg.copyWith(
            color: typographyPrimary(theme),
          ),
        ),
      ],
    );
  }
}

// @Preview(group: 'Error Widget', name: 'Light')
// Widget previewLight() => sizedWrapper(
//   ErrorWidget(
//     theme: .light,
//     error: const .general('long text long text long text long text long text'),
//     onPressed: () => print('on pressed'),
//   ),
//   width: 200,
//   hight: 200,
//   padding: 0,
// );

// @Preview(group: 'Error Widget', name: 'Dark')
// Widget previewDark() => sizedWrapper(
//   ErrorWidget(
//     theme: .dark,
//     error: const .general('abc'),
//     onPressed: () => print('on pressed'),
//   ),
//   width: 200,
//   hight: 200,
//   padding: 0,
// );

// @Preview(group: 'Error Widget', name: 'Brown Light')
// Widget previewBrownLight() => sizedWrapper(
//   ErrorWidget(
//     theme: .brownLight,
//     error: const .general('abc'),
//     onPressed: () => print('on pressed'),
//   ),
//   width: 200,
//   hight: 200,
//   padding: 0,
// );

// @Preview(group: 'Error Widget', name: 'Brown Dark')
// Widget previewBrownDark() => sizedWrapper(
//   ErrorWidget(
//     theme: .brownDark,
//     error: const .general('abc'),
//     onPressed: () => print('on pressed'),
//   ),
//   width: 200,
//   hight: 200,
//   padding: 0,
// );
