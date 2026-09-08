import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tafsir/aayaat/cubit/scroll_position_cubit.dart';
import 'package:tafsir/common/ui/app_theme.dart';
import 'package:tafsir/main/domain/surah.dart';
import 'package:tafsir/theme/cubit/theme_cubit.dart';

class ScrollPositionWidget extends StatelessWidget {
  static const height = 17.0;

  const ScrollPositionWidget({
    super.key,
    required this.quantity,
  });

  final AayahQuantity quantity;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ThemeCubit, ThemeState>(
      builder: (context, themeState) {
        final textColor = themeState.theme == .dark
            ? typographyPrimaryLight
            : typographyPrimary(themeState.theme);

        return Container(
          height: height,
          clipBehavior: .hardEdge,
          decoration: BoxDecoration(
            borderRadius: .circular(100),
            color: bgContainer(themeState.theme),
            boxShadow: const [
              .new(
                blurRadius: 4,
                offset: .new(0, 2),
                color: Color(0x14A0A0A0),
                // blurStyle: .outer,
              ),
            ],
          ),
          child: Stack(
            children: [
              LayoutBuilder(
                builder: (context, constraints) {
                  return BlocBuilder<ScrollPositionCubit, ScrollPositionState>(
                    builder: (context, state) {
                      return AnimatedContainer(
                        curve: Curves.easeInOut,
                        color: brandPrimary(themeState.theme),
                        duration: const .new(milliseconds: 500),
                        width: constraints.maxWidth / quantity * state.number,
                      );
                    },
                  );
                },
              ),
              Center(
                child: Text(
                  '$quantity аятов',
                  style: textBodySmall.copyWith(color: textColor),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}

// @Preview(group: 'Scroll Position Widget', name: 'Light')
// Widget previewLight() => MultiBlocProvider(
//   providers: [
//     BlocProvider(create: (context) => ThemeCubit(.new(.new()))),
//     BlocProvider(create: (context) => ScrollPositionCubit(const .new(6))),
//   ],
//   child: sizedWrapper(
//     const Column(children: [ScrollPositionWidget(quantity: .new(12))]),
//   ),
// );
