import 'package:flutter/material.dart';
import 'package:tafsir/common/domain/scope_functions.dart';
import 'package:tafsir/common/ui/app_theme.dart';
import 'package:tafsir/search/domain/found_item.dart';

class FoundItemCard extends StatelessWidget {
  const FoundItemCard({
    super.key,
    required this.item,
    required this.theme,
  });

  final AppTheme theme;
  final FoundItem item;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const .all(12),
      decoration: BoxDecoration(
        color: bgSecondary(theme),
        borderRadius: .circular(16),
        boxShadow: const [
          .new(
            blurRadius: 4,
            offset: .new(0, 2),
            color: Color(0x14A0A0A0),
            // blurStyle: .outer,
          ),
        ],
      ),
      child: Row(
        spacing: 2,
        children: [
          Expanded(
            child: Text.rich(
              overflow: .ellipsis,
              TextSpan(
                children: [
                  ?item.prefix?.let(
                    (it) => TextSpan(
                      text: it,
                      style: textBodyReg.copyWith(
                        color: typographyPrimary(theme),
                      ),
                    ),
                  ),
                  TextSpan(
                    text: item.text,
                    style: textBodyReg.copyWith(color: typographyLink(theme)),
                  ),
                  ?item.suffix?.let(
                    (it) => TextSpan(
                      text: it,
                      style: textBodyReg.copyWith(
                        color: typographyPrimary(theme),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Text(
            '${item.surah.name}, ${item.aayahNumber} аят',
            style: textBodyMedium.copyWith(color: typographyTertirary(theme)),
          ),
        ],
      ),
    );
  }
}
