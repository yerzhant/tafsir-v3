import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:tafsir/common/ui/app_theme.dart';

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
          SvgPicture.asset(
            'assets/icons/vertical-dots.svg',
            colorFilter: .mode(textColor, .srcIn),
          ),
        ],
      ),
    );
  }
}

// @Preview(group: 'Header', name: 'Light')
// Widget previewLight() => sizedWrapper(const Header(theme: .light), width: 500);

// @Preview(group: 'Header', name: 'Dark')
// Widget previewDark() =>
//     sizedWrapper(const Header(theme: .dark), width: 500, color: bgPrimaryDark);
