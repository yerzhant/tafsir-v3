import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:tafsir/aayaat/ui/surah_page.dart';
import 'package:tafsir/common/ui/app_card.dart';
import 'package:tafsir/common/ui/app_theme.dart';
import 'package:tafsir/common/ui/circle_card.dart';
import 'package:tafsir/main/domain/djuz.dart';

class DjuzItem extends StatelessWidget {
  const DjuzItem({
    super.key,
    required this.theme,
    required this.djuz,
  });

  final AppTheme theme;
  final Djuz djuz;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => SurahPage.open(
        context,
        context.read(),
        djuz.fromSurahNumber,
        .new(djuz.fromAayah, 0),
      ),
      child: AppCard(
        theme: theme,
        child: Row(
          spacing: 8,
          children: [
            CircleCard(
              theme: theme,
              child: Text(
                '${djuz.number}',
                style: textCallout.copyWith(color: typographyPrimary(theme)),
                textHeightBehavior: const .new(applyHeightToLastDescent: false),
              ),
            ),
            Expanded(
              child: Column(
                spacing: 2,
                mainAxisAlignment: .center,
                crossAxisAlignment: .start,
                children: [
                  Text(
                    '${djuz.fromSurahName}:${djuz.fromAayah} → ${djuz.toSurahName}:${djuz.toAayah}',
                    style: textCallout.copyWith(
                      color: typographyPrimary(theme),
                    ),
                    overflow: .ellipsis,
                  ),
                  Row(
                    spacing: 2,
                    mainAxisSize: .min,
                    children: [
                      SvgPicture.asset(
                        'assets/icons/map-pin.svg',
                        colorFilter: .mode(
                          typographyLabelsAndIcons(theme),
                          .srcIn,
                        ),
                      ),
                      Text(
                        djuz.place.name,
                        style: textBodyMedium.copyWith(
                          color: typographySecondary(theme),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// @Preview(group: 'DjuzItem', name: 'Light')
// Widget previewLight() => sizedWrapper(
//   const DjuzItem(
//     theme: .light,
//     item: .new(
//       .new(1),
//       .new('Аль-Фатиха'),
//       .new('Аль-Бакара'),
//       .mekkah,
//     ),
//   ),
//   width: 400,
// );

// @Preview(group: 'DjuzItem', name: 'Light Long')
// Widget previewLightLong() => sizedWrapper(
//   const DjuzItem(
//     theme: .light,
//     item: .new(
//       .new(1),
//       .new('Аль-Фатиха 7'),
//       .new('Аль-Бакара Аль-Бакара'),
//       .madinah,
//     ),
//   ),
//   width: 400,
// );
