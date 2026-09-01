import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:tafsir/common/ui/app_theme.dart';

class InfoPageHeader extends StatelessWidget {
  const InfoPageHeader({super.key, required this.theme, required this.title});

  final AppTheme theme;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const .symmetric(horizontal: 20, vertical: 12),
      child: Row(
        children: [
          InkWell(
            borderRadius: .circular(100),
            onTap: () => Navigator.pop(context),
            child: SvgPicture.asset(
              'assets/icons/arrow-left.svg',
              colorFilter: .mode(typographyPrimary(theme), .srcIn),
            ),
          ),
          Expanded(
            child: Text(
              title,
              textAlign: .center,
              style: textH2.copyWith(color: typographyPrimary(theme)),
            ),
          ),
          const SizedBox(width: 32),
        ],
      ),
    );
  }
}
