import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:share_plus/share_plus.dart';
import 'package:tafsir/about_us/ui/about_button.dart';
import 'package:tafsir/about_us/ui/do_not_forget_us_widget.dart';
import 'package:tafsir/about_us/ui/socials_widget.dart';
import 'package:tafsir/app.dart';
import 'package:tafsir/common/ui/app_container.dart';
import 'package:tafsir/common/ui/info_page_header.dart';
import 'package:tafsir/common/ui/masjid.dart';
import 'package:tafsir/theme/cubit/theme_cubit.dart';
import 'package:url_launcher/url_launcher_string.dart';

class AboutPage extends StatelessWidget {
  const AboutPage._();

  static void open(BuildContext context) => Navigator.push(
    context,
    MaterialPageRoute(
      builder: (context) => const AboutPage._(),
    ),
  );

  @override
  Widget build(BuildContext context) {
    final appLink = Platform.isAndroid
        ? 'https://play.google.com/store/apps/details?id=ru.azan.tafsir'
        : 'https://apps.apple.com/app/id1542515717';

    return Scaffold(
      body: BlocBuilder<ThemeCubit, ThemeState>(
        builder: (context, state) {
          final theme = state.theme;

          final imageSuffix = theme == .brownLight || theme == .brownDark
              ? '-brown'
              : '';

          return Masjid(
            theme: theme,
            child: SafeArea(
              bottom: false,
              child: Column(
                children: [
                  InfoPageHeader(theme: theme, title: 'О нас'),
                  Expanded(
                    child: AppContainer(
                      theme: theme,
                      child: SingleChildScrollView(
                        padding: .only(
                          right: 20,
                          top: 20,
                          left: 20,
                          bottom: MediaQuery.paddingOf(context).bottom,
                        ),
                        child: Column(
                          spacing: 12,
                          children: [
                            Image.asset('assets/images/tafsir$imageSuffix.png'),
                            Column(
                              spacing: 8,
                              children: [
                                AboutButton(
                                  icon: 'share',
                                  theme: theme,
                                  title: 'Поделиться',
                                  onTap: () => SharePlus.instance.share(
                                    .new(
                                      title: appTitle,
                                      uri: .parse(appLink),
                                    ),
                                  ),
                                ),
                                AboutButton(
                                  icon: 'star',
                                  theme: theme,
                                  title: 'Оценить приложение',
                                  onTap: () => launchUrlString(appLink),
                                ),
                                AboutButton(
                                  theme: theme,
                                  icon: 'note-pencil',
                                  title: 'Предложения и замечания',
                                  onTap: () => launchUrlString(
                                    'https://azan.ru/site/write-to-admin',
                                  ),
                                ),
                                SocialsWidget(theme: theme),
                              ],
                            ),
                            DoNotForgetUsWidget(theme: theme),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
