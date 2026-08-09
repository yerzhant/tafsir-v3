import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:tafsir/common/ui/app_theme.dart';
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
      showDragHandle: true,
      builder: (context) => Padding(
        padding: const .symmetric(horizontal: 20, vertical: 18),
        child: Column(
          spacing: 8,
          children: [
            MenuButton(theme: theme, menu: .howToUse),
            MenuButton(theme: theme, menu: .aboutUs),
          ],
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
