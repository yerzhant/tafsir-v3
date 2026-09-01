import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:tafsir/common/domain/scope_functions.dart';
import 'package:tafsir/common/ui/app_card.dart';
import 'package:tafsir/common/ui/app_theme.dart';
import 'package:tafsir/common/ui/circle_card.dart';
import 'package:tafsir/main/domain/surah.dart';

class ShortSurahItem extends StatelessWidget {
  const ShortSurahItem({
    super.key,
    required this.theme,
    required this.surah,
    required this.onTap,
  });

  final Surah surah;
  final AppTheme theme;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: AppCard(
        theme: theme,
        child: Row(
          spacing: 8,
          children: [
            CircleCard(
              theme: theme,
              child: Text(
                '${surah.number}',
                style: textCallout.copyWith(color: typographyPrimary(theme)),
              ),
            ),
            Expanded(
              child: Column(
                spacing: 2,
                mainAxisAlignment: .center,
                crossAxisAlignment: .start,
                children: [
                  Text(
                    surah.name,
                    overflow: .ellipsis,
                    style: textCallout.copyWith(
                      color: typographyPrimary(theme),
                    ),
                  ),
                  ?surah.translation?.let(
                    (it) => Text(
                      it,
                      overflow: .ellipsis,
                      style: textBodyMedium.copyWith(
                        color: typographySecondary(theme),
                      ),
                    ),
                  ),
                  ?surah.place?.let(
                    (it) => Row(
                      spacing: 2,
                      children: [
                        SvgPicture.asset(
                          'assets/icons/map-pin.svg',
                          colorFilter: .mode(
                            typographyLabelsAndIcons(theme),
                            .srcIn,
                          ),
                        ),
                        Text(
                          it.name,
                          style: textBodyMedium.copyWith(
                            color: typographySecondary(theme),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Column(
              spacing: 2,
              mainAxisAlignment: .center,
              crossAxisAlignment: .end,
              children: [
                Text(
                  '${surah.quantity} аятов',
                  style: textBodyMedium.copyWith(
                    color: typographySecondary(theme).withValues(alpha: .8),
                  ),
                ),
                Text(
                  'Джуз: ${surah.djuz}',
                  style: textBodyMedium.copyWith(
                    color: typographySecondary(theme).withValues(alpha: .8),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

// @Preview(group: 'ShortSurahItem', name: 'Light')
// Widget previewLight() => sizedWrapper(
//   ShortSurahItem(
//     theme: .light,
//     surah: const .new(
//       .new(1),
//       .new('Аль-Фатиха'),
//       .new(''),
//       .new('1'),
//       .makkah,
//       .new('Открывающая'),
//       .new(7),
//     ),
//     onTap: () {},
//   ),
//   width: 400,
// );

// @Preview(group: 'ShortSurahItem', name: 'Light Long')
// Widget previewLightLong() => sizedWrapper(
//   ShortSurahItem(
//     theme: .light,
//     surah: const .new(
//       .new(2),
//       .new('Аль-Бакара Аль-Бакара Аль-Бакара'),
//       .new(''),
//       .new('1'),
//       .madinah,
//       .new('Корова Корова Корова'),
//       .new(286),
//     ),
//     onTap: () {},
//   ),
//   width: 300,
// );
