import 'package:flutter/material.dart';
import 'package:flutter/widget_previews.dart';
import 'package:tafsir/about_us/ui/icon_panel.dart';
import 'package:tafsir/common/ui/app_card.dart';
import 'package:tafsir/common/ui/app_theme.dart';
import 'package:tafsir/common/ui/preview.dart';

class SocialsWidget extends StatelessWidget {
  const SocialsWidget({super.key, required this.theme});

  final AppTheme theme;

  @override
  Widget build(BuildContext context) {
    final titleColor = switch (theme) {
      .light => typographyPrimaryLight,
      .dark => typographyPrimaryDark,
      .brownLight => typographyPrimaryBrownLight,
      .brownDark => typographyPrimaryBrownDark,
    };

    return AppCard(
      theme: theme,
      horizontalPadding: 16,
      child: Column(
        spacing: 12,
        crossAxisAlignment: .start,
        children: [
          Row(
            children: [
              Text(
                'Наши соц. сети',
                style: textBodyReg.copyWith(color: titleColor),
              ),
            ],
          ),
          Row(
            spacing: 12,
            children: [
              IconPanel(
                theme: theme,
                icon: 'globe',
                padding: 6.08,
              ),
              IconPanel(
                theme: theme,
                icon: 'facebook',
                padding: 6.08,
              ),
              IconPanel(
                theme: theme,
                icon: 'telegram',
                padding: 6.08,
              ),
              IconPanel(
                theme: theme,
                icon: 'instagram',
                padding: 6.08,
              ),
              IconPanel(
                theme: theme,
                icon: 'youtube',
                padding: 6.08,
              ),
            ],
          ),
        ],
      ),
    );
  }
}

@Preview(group: 'AboutButton', name: 'Light')
Widget previewLight() => sizedWrapper(
  const SocialsWidget(theme: .light),
  width: 400,
  hight: 200,
);
