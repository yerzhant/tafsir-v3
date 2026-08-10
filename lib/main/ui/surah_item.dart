import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:tafsir/common/domain/scope_functions.dart';
import 'package:tafsir/common/ui/app_card.dart';
import 'package:tafsir/common/ui/app_theme.dart';
import 'package:tafsir/common/ui/circle_card.dart';
import 'package:tafsir/main/domain/surah.dart';

class SurahItem extends StatelessWidget {
  const SurahItem({
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
    return GestureDetector(
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
                  Row(
                    children: [
                      ?surah.translation?.let(
                        (it) => Flexible(
                          child: Text(
                            it,
                            overflow: .ellipsis,
                            style: textBodyMedium.copyWith(
                              color: typographySecondary(theme),
                            ),
                          ),
                        ),
                      ),
                      ?surah.place?.let(
                        (it) => Row(
                          children: [
                            if (surah.translation != null)
                              Row(
                                children: [
                                  const SizedBox(width: 4),
                                  Container(
                                    width: 4,
                                    height: 4,
                                    decoration: BoxDecoration(
                                      color: typographyTertirary(theme),
                                      shape: .circle,
                                    ),
                                  ),
                                  const SizedBox(width: 4),
                                ],
                              ),
                            SvgPicture.asset(
                              'assets/icons/map-pin.svg',
                              colorFilter: .mode(
                                typographyLabelsAndIcons(theme),
                                .srcIn,
                              ),
                            ),
                            const SizedBox(width: 2),
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

// @Preview(group: 'SurahItem', name: 'Light')
// Widget previewLight() => sizedWrapper(
//   const SurahItem(
//     theme: .light,
//     item: .new(
//       .new(1),
//       .new('Аль-Фатиха'),
//       .new('Открывающая'),
//       .mekkah,
//       .new(7),
//       .new('1'),
//     ),
//   ),
//   width: 400,
// );

// @Preview(group: 'SurahItem', name: 'Light Long')
// Widget previewLightLong() => sizedWrapper(
//   const SurahItem(
//     theme: .light,
//     item: .new(
//       .new(2),
//       .new('Аль-Бакара Аль-Бакара Аль-Бакара'),
//       .new('Корова Корова Корова'),
//       .madinah,
//       .new(286),
//       .new('1-3'),
//     ),
//   ),
//   width: 400,
// );
