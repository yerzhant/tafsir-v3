import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:tafsir/about_us/ui/about_page.dart';
import 'package:tafsir/common/ui/app_theme.dart';
import 'package:tafsir/how_to_use/ui/how_to_use_page.dart';
import 'package:tafsir/main/cubit/main_cubit.dart';
import 'package:tafsir/main/domain/surah.dart';
import 'package:tafsir/main/ui/menu_button.dart';
import 'package:tafsir/search/ui/search_widget.dart';

class Header extends StatelessWidget {
  const Header({
    super.key,
    required this.suwar,
    required this.theme,
    required this.mainCubit,
  });

  final AppTheme theme;
  final List<Surah> suwar;
  final MainCubit mainCubit;

  @override
  Widget build(BuildContext context) {
    final textColor = typographyPrimary(theme);

    return Padding(
      padding: const .symmetric(horizontal: 20, vertical: 12),
      child: Row(
        spacing: 16,
        children: [
          Text(
            'Тафсир Azan.ru',
            style: textH1.copyWith(color: textColor),
          ),
          const Spacer(),
          InkWell(
            borderRadius: .circular(5),
            onTap: () => _showSearch(context),
            child: SvgPicture.asset(
              'assets/icons/magnifying-glass.svg',
              colorFilter: .mode(textColor, .srcIn),
            ),
          ),
          InkWell(
            borderRadius: .circular(5),
            onTap: () => _showMenu(context),
            child: SvgPicture.asset(
              'assets/icons/vertical-dots.svg',
              colorFilter: .mode(textColor, .srcIn),
            ),
          ),
        ],
      ),
    );
  }

  void _showSearch(BuildContext context) {
    showModalBottomSheet(
      context: context,
      useSafeArea: true,
      showDragHandle: true,
      isScrollControlled: true,
      builder: (ctx) {
        final viewBottom = MediaQuery.of(ctx).viewInsets.bottom;

        return Padding(
          padding: .only(
            right: 20,
            left: 20,
            bottom: viewBottom,
          ),
          child: SearchWidget(
            suwar: suwar,
            mainCubit: mainCubit,
            viewBottom: viewBottom,
          ),
        );
      },
    );
  }

  void _showMenu(BuildContext context) {
    showModalBottomSheet(
      context: context,
      useSafeArea: true,
      showDragHandle: true,
      isScrollControlled: true,
      builder: (context) => SafeArea(
        child: Padding(
          padding: const .symmetric(horizontal: 20),
          child: Column(
            mainAxisSize: .min,
            spacing: 8,
            children: [
              MenuButton(
                theme: theme,
                menu: .howToUse,
                onTap: () {
                  Navigator.pop(context);
                  HowToUsePage.open(context);
                },
              ),
              MenuButton(
                theme: theme,
                menu: .aboutUs,
                onTap: () {
                  Navigator.pop(context);
                  AboutPage.open(context);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// @Preview(group: 'Header', name: 'Light')
// Widget previewLight() => sizedWrapper(const Header(theme: .light), width: 500);

// @Preview(group: 'Header', name: 'Dark')
// Widget previewDark() =>
//     sizedWrapper(const Header(theme: .dark), width: 500, color: bgPrimaryDark);
