import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:tafsir/about_us/ui/about_page.dart';
import 'package:tafsir/common/ui/app_theme.dart';
import 'package:tafsir/how_to_use/ui/how_to_use_page.dart';
import 'package:tafsir/main/ui/menu_button.dart';

class Header extends StatelessWidget {
  const Header({super.key, required this.theme});

  final AppTheme theme;

  @override
  Widget build(BuildContext context) {
    final textColor = typographyPrimary(theme);

    return Padding(
      padding: const .symmetric(horizontal: 20, vertical: 12),
      child: Row(
        spacing: 16,
        children: [
          Text(
            'Тафсир Azan.ru',
            style: textH1.copyWith(color: textColor),
          ),
          const Spacer(),
          // SvgPicture.asset(
          //   'assets/icons/magnifying-glass.svg',
          //   colorFilter: .mode(textColor, .srcIn),
          // ),
          GestureDetector(
            onTap: () => _showMenu(context),
            child: SvgPicture.asset(
              'assets/icons/vertical-dots.svg',
              colorFilter: .mode(textColor, .srcIn),
            ),
          ),
        ],
      ),
    );
  }

  void _showMenu(BuildContext context) {
    showModalBottomSheet(
      context: context,
      useSafeArea: true,
      showDragHandle: true,
      isScrollControlled: true,
      builder: (context) => SafeArea(
        child: Padding(
          padding: const .only(right: 20, left: 20, bottom: 18),
          child: Column(
            mainAxisSize: .min,
            spacing: 8,
            children: [
              MenuButton(
                theme: theme,
                menu: .howToUse,
                onTap: () {
                  Navigator.pop(context);
                  HowToUsePage.open(context);
                },
              ),
              MenuButton(
                theme: theme,
                menu: .aboutUs,
                onTap: () {
                  Navigator.pop(context);
                  AboutPage.open(context);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// @Preview(group: 'Header', name: 'Light')
// Widget previewLight() => sizedWrapper(const Header(theme: .light), width: 500);

// @Preview(group: 'Header', name: 'Dark')
// Widget previewDark() =>
//     sizedWrapper(const Header(theme: .dark), width: 500, color: bgPrimaryDark);
