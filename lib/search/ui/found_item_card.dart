import 'package:flutter/material.dart';
import 'package:tafsir/aayaat/ui/surah_page.dart';
import 'package:tafsir/common/ui/app_theme.dart';
import 'package:tafsir/main/cubit/main_cubit.dart';
import 'package:tafsir/main/domain/surah.dart';
import 'package:tafsir/search/domain/found_item.dart';

class FoundItemCard extends StatelessWidget {
  const FoundItemCard({
    super.key,
    required this.item,
    required this.suwar,
    required this.theme,
    required this.mainCubit,
  });

  final AppTheme theme;
  final FoundItem item;
  final List<Surah> suwar;
  final MainCubit mainCubit;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pop(context);

        SurahPage.open(
          context,
          mainCubit,
          suwar,
          item.surahNumber,
          .new(item.aayahNumber, 0),
        );
      },
      child: Container(
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
                    TextSpan(
                      text: item.prefix,
                      style: textBodyReg.copyWith(
                        color: typographyPrimary(theme),
                      ),
                    ),
                    TextSpan(
                      text: item.text,
                      style: textBodyReg.copyWith(color: typographyLink(theme)),
                    ),
                    TextSpan(
                      text: item.suffix,
                      style: textBodyReg.copyWith(
                        color: typographyPrimary(theme),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Text(
              '${item.surahName}, ${item.aayahNumber} аят',
              style: textBodyMedium.copyWith(color: typographyTertirary(theme)),
            ),
          ],
        ),
      ),
    );
  }
}
