import 'package:flutter/material.dart';
import 'package:flutter/widget_previews.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:tafsir/common/ui/app_theme.dart';
import 'package:tafsir/common/ui/preview.dart';

class SettingsHeader extends StatelessWidget {
  const SettingsHeader({super.key, required this.theme});

  final AppTheme theme;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const .symmetric(horizontal: 20, vertical: 8),
      decoration: BoxDecoration(
        borderRadius: const .vertical(bottom: .circular(20)),
        color: bgSecondary(theme),
      ),
      child: Row(
        spacing: 12,
        children: [
          GestureDetector(
            onTap: () => Navigator.pop(context),
            child: Container(
              padding: const .symmetric(horizontal: 6, vertical: 4),
              decoration: BoxDecoration(
                borderRadius: .circular(8),
                color: bgPrimary(theme),
              ),
              child: SvgPicture.asset(
                'assets/icons/arrow-left-surah.svg',
                colorFilter: .mode(typographyPrimary(theme), .srcIn),
              ),
            ),
          ),

          Text(
            'Настройки',
            style: textHeadline.copyWith(
              color: typographyPrimary(theme),
            ),
          ),
        ],
      ),
    );
  }
}

@Preview(group: 'Settings Header', name: 'Light')
Widget previewLight() => sizedWrapper(
  const SettingsHeader(theme: .light),
  width: 500,
);
