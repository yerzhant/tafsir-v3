import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:tafsir/aayaat/ui/surah_page.dart';
import 'package:tafsir/common/domain/scope_functions.dart';
import 'package:tafsir/common/ui/app_theme.dart';
import 'package:tafsir/main/cubit/main_cubit.dart';
import 'package:tafsir/main/domain/surah.dart';
import 'package:tafsir/theme/cubit/theme_cubit.dart';

class SurahNavigator extends StatelessWidget {
  const SurahNavigator({
    super.key,
    required this.suwar,
    required this.number,
    required this.mainCubit,
    required this.onOpenSurah,
    required this.onShowSuwar,
  });

  final List<Surah> suwar;
  final SurahNumber number;
  final MainCubit mainCubit;
  final VoidCallback onOpenSurah;
  final VoidCallback onShowSuwar;

  @override
  Widget build(BuildContext context) {
    final (prev, next) = switch (number) {
      1 => (null, suwar[1]),
      114 => (suwar[112], null),
      _ => (suwar[number - 2], suwar[number]),
    };

    return BlocBuilder<ThemeCubit, ThemeState>(
      builder: (context, themeState) {
        return Row(
          spacing: 8,
          children: [
            _Button(
              onTap: onShowSuwar,
              icon: 'list-search',
              theme: themeState.theme,
            ),
            Expanded(
              child: Row(
                spacing: 8,
                mainAxisAlignment: .end,
                children: [
                  ?prev?.let(
                    (surah) => Flexible(
                      child: _Button(
                        title: surah.name,
                        icon: 'prev-surah',
                        theme: themeState.theme,
                        onTap: () => _openSurah(context, surah),
                      ),
                    ),
                  ),
                  ?next?.let(
                    (surah) => Flexible(
                      child: _Button(
                        reversed: true,
                        title: surah.name,
                        icon: 'next-surah',
                        theme: themeState.theme,
                        onTap: () => _openSurah(context, surah),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        );
      },
    );
  }

  void _openSurah(BuildContext context, Surah surah) {
    onOpenSurah();

    Navigator.pop(context);

    SurahPage.open(
      context,
      mainCubit,
      suwar,
      surah.number,
      const .new(.new(1), 0),
    );
  }
}

class _Button extends StatelessWidget {
  const _Button({
    this.title,
    required this.icon,
    required this.onTap,
    required this.theme,
    this.reversed = false,
  });

  final String icon;
  final String? title;
  final bool reversed;
  final AppTheme theme;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      borderRadius: .circular(8),
      child: Container(
        padding: const .all(12),
        decoration: BoxDecoration(
          color: bgTertirary(theme),
          borderRadius: .circular(8),
          border: .all(color: borderPrimary(theme)),
        ),
        child: Row(
          spacing: 8,
          mainAxisSize: .min,
          children: [
            SvgPicture.asset(
              'assets/icons/$icon.svg',
              colorFilter: .mode(typographyLabelsAndIcons(theme), .srcIn),
            ),
            ?title?.let(
              (it) => Flexible(
                child: Text(
                  it,
                  overflow: .ellipsis,
                  style: textBodyReg.copyWith(color: typographyPrimary(theme)),
                ),
              ),
            ),
          ].let((it) => reversed ? it.reversed.toList() : it),
        ),
      ),
    );
  }
}

// @Preview(group: 'Surah Navigator', name: 'Light')
// Widget previewLight() => sizedWrapper(
//   width: 400,
//   BlocProvider(
//     create: (context) => ThemeCubit(.new(.new())),
//     child: SurahNavigator(
//       mainCubit: .new(.new(.new())),
//       onShowSuwar: () => print('on show suwar'),
//       number: const .new(2),
//       suwar: [
//         const .new(
//           .new(1),
//           .new('111 sdf sf dsfsd fsd fsd'),
//           .new('value'),
//           .new('value'),
//           .madinah,
//           .new('value'),
//           .new(1),
//         ),
//         const .new(
//           .new(2),
//           .new('value'),
//           .new('value'),
//           .new('value'),
//           .madinah,
//           .new('value'),
//           .new(1),
//         ),
//         const .new(
//           .new(3),
//           .new('3333 333 333 ddd ddd dddd'),
//           .new('value'),
//           .new('value'),
//           .madinah,
//           .new('value'),
//           .new(1),
//         ),
//       ],
//       // suwar: .generate(
//       //   114,
//       //   (index) => .new(
//       //     .new(index + 1),
//       //     .new('Surah ${index + 1}'),
//       //     const .new('value'),
//       //     const .new('value'),
//       //     .madinah,
//       //     const .new('value'),
//       //     const .new(1),
//       //   ),
//       // ),
//     ),
//   ),
// );
