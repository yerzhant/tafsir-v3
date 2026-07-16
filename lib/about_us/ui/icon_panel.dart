import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:tafsir/common/ui/app_theme.dart';

class IconPanel extends StatelessWidget {
  const IconPanel({
    super.key,
    required this.theme,
    required this.icon,
    this.padding = 4,
  });

  final AppTheme theme;
  final double padding;
  final String icon;

  @override
  Widget build(BuildContext context) {
    final bgColor = switch (theme) {
      .light => bgTertiraryLight,
      .dark => bgTertiraryDark,
      .brownLight => bgTertiraryBrownLight,
      .brownDark => bgTertiraryBrownDark,
    };

    final iconColor = switch (theme) {
      AppTheme.light => brandPrimaryLight,
      AppTheme.dark => brandPrimaryDark,
      AppTheme.brownLight => brandPrimaryBrownLight,
      AppTheme.brownDark => brandPrimaryBrownDark,
    };

    return Container(
      padding: .all(padding),
      decoration: BoxDecoration(
        color: bgColor,
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
          colorFilter: .mode(iconColor, .srcIn),
        ),
      ),
    );
  }
}
