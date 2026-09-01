import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:tafsir/common/ui/app_theme.dart';
import 'package:tafsir/theme/cubit/theme_cubit.dart';

class SettingsHeader extends StatelessWidget {
  const SettingsHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ThemeCubit, ThemeState>(
      builder: (context, state) {
        return Container(
          padding: const .symmetric(horizontal: 20, vertical: 8),
          decoration: BoxDecoration(
            color: bgSecondary(state.theme),
            borderRadius: const .vertical(bottom: .circular(20)),
          ),
          child: Column(
            children: [
              SizedBox(height: MediaQuery.paddingOf(context).top),
              Row(
                spacing: 12,
                children: [
                  InkWell(
                    borderRadius: .circular(8),
                    onTap: () => Navigator.pop(context),
                    child: Container(
                      padding: const .symmetric(horizontal: 6, vertical: 4),
                      decoration: BoxDecoration(
                        borderRadius: .circular(8),
                        color: bgPrimary(state.theme),
                      ),
                      child: SvgPicture.asset(
                        'assets/icons/arrow-left-surah.svg',
                        colorFilter: .mode(
                          typographyPrimary(state.theme),
                          .srcIn,
                        ),
                      ),
                    ),
                  ),

                  Text(
                    'Настройки',
                    style: textHeadline.copyWith(
                      color: typographyPrimary(state.theme),
                    ),
                  ),
                ],
              ),
            ],
          ),
        );
      },
    );
  }
}

// @Preview(group: 'Settings Header', name: 'Light')
// Widget previewLight() => sizedWrapper(
//   const SettingsHeader(theme: .light),
//   width: 500,
// );
