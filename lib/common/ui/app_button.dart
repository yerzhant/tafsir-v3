import 'package:flutter/material.dart';
import 'package:tafsir/common/ui/app_theme.dart';

class AppButton extends StatelessWidget {
  const AppButton({
    super.key,
    required this.title,
    required this.theme,
    required this.onTap,
  });

  final String title;
  final AppTheme theme;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      borderRadius: .circular(100),
      child: Container(
        padding: const .symmetric(
          horizontal: 16,
          vertical: 12,
        ),
        decoration: BoxDecoration(
          color: brandPrimary(theme),
          borderRadius: .circular(100),
        ),
        child: Center(
          child: Text(
            title,
            style: textBodyReg.copyWith(
              color: theme == .dark ? bgPrimary(theme) : typographyTextWhite,
            ),
          ),
        ),
      ),
    );
  }
}
