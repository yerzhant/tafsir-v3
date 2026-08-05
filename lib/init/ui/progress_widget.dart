import 'package:flutter/material.dart';
import 'package:tafsir/common/ui/app_theme.dart';

class ProgressWidget extends StatelessWidget {
  const ProgressWidget({
    super.key,
    required this.theme,
    required this.value,
  });

  final AppTheme theme;
  final double value;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: bgPrimary(theme),
      child: Column(
        mainAxisAlignment: .center,
        spacing: 8,
        children: [
          CircularProgressIndicator.adaptive(
            value: value,
            backgroundColor: typographyPrimary(theme),
          ),
          Text(
            '${value.toStringAsFixed(1)} %',
            style: textBodyMedium.copyWith(color: typographyPrimary(theme)),
          ),
        ],
      ),
    );
  }
}

// @Preview(group: 'Progress Widget', name: 'Light')
// Widget previewLight() => sizedWrapper(
//   const ProgressWidget(theme: .light, value: 10),
//   width: 200,
//   hight: 200,
//   padding: 0,
// );

// @Preview(group: 'Progress Widget', name: 'Dark')
// Widget previewDark() => sizedWrapper(
//   const ProgressWidget(theme: .dark, value: 10),
//   width: 200,
//   hight: 200,
//   padding: 0,
// );

// @Preview(group: 'Progress Widget', name: 'Brown Light')
// Widget previewBrownLight() => sizedWrapper(
//   const ProgressWidget(theme: .brownLight, value: 10),
//   width: 200,
//   hight: 200,
//   padding: 0,
// );

// @Preview(group: 'Progress Widget', name: 'Brown Dark')
// Widget previewBrownDark() => sizedWrapper(
//   const ProgressWidget(theme: .brownDark, value: 10),
//   width: 200,
//   hight: 200,
//   padding: 0,
// );
