import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:tafsir/common/ui/app_theme.dart';

class IconPanel extends StatelessWidget {
  const IconPanel({
    super.key,
    required this.theme,
    required this.icon,
    this.padding = 4,
    this.onTap,
  });

  final AppTheme theme;
  final double padding;
  final String icon;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: .all(padding),
        decoration: BoxDecoration(
          color: bgTertirary(theme),
          borderRadius: .circular(padding),
          boxShadow: const [
            .new(
              blurRadius: 12,
              offset: .new(0, 2),
              color: Color(0x14000000),
              blurStyle: .outer,
            ),
          ],
        ),
        child: Center(
          child: SvgPicture.asset(
            'assets/icons/$icon.svg',
            colorFilter: .mode(brandPrimary(theme), .srcIn),
          ),
        ),
      ),
    );
  }
}
