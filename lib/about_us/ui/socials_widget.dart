import 'package:flutter/material.dart';
import 'package:tafsir/about_us/ui/icon_panel.dart';
import 'package:tafsir/common/ui/app_card.dart';
import 'package:tafsir/common/ui/app_theme.dart';
import 'package:url_launcher/url_launcher_string.dart';

class SocialsWidget extends StatelessWidget {
  const SocialsWidget({super.key, required this.theme});

  final AppTheme theme;

  @override
  Widget build(BuildContext context) {
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
                style: textBodyReg.copyWith(color: typographyPrimary(theme)),
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
                onTap: () => launchUrlString('https://azan.ru'),
              ),
              IconPanel(
                theme: theme,
                icon: 'facebook',
                padding: 6.08,
                onTap: () => launchUrlString(
                  'https://www.facebook.com/azan.ru/',
                ),
              ),
              IconPanel(
                theme: theme,
                icon: 'telegram',
                padding: 6.08,
                onTap: () => launchUrlString('https://t.me/azan_ru'),
              ),
              IconPanel(
                theme: theme,
                icon: 'instagram',
                padding: 6.08,
                onTap: () => launchUrlString(
                  'https://www.instagram.com/azan_ru/',
                ),
              ),
              IconPanel(
                theme: theme,
                icon: 'youtube',
                padding: 6.08,
                onTap: () => launchUrlString(
                  'https://www.youtube.com/c/azan_ru',
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

// @Preview(group: 'AboutButton', name: 'Light')
// Widget previewLight() => sizedWrapper(
//   const SocialsWidget(theme: .light),
//   width: 400,
//   hight: 200,
// );
