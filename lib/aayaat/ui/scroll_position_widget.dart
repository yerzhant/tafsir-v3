import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tafsir/aayaat/domain/aayah.dart';
import 'package:tafsir/common/ui/app_theme.dart';
import 'package:tafsir/main/domain/surah.dart';
import 'package:tafsir/theme/cubit/theme_cubit.dart';

class ScrollPositionWidget extends StatelessWidget {
  const ScrollPositionWidget({
    super.key,
    required this.number,
    required this.quantity,
  });

  final AayahNumber number;
  final AayahQuantity quantity;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ThemeCubit, ThemeState>(
      builder: (context, themeState) {
        return Container(
          height: 18,
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
          child: LayoutBuilder(
            builder: (context, constraints) => Stack(
              alignment: .centerStart,
              children: [
                Container(
                  color: brandPrimary(themeState.theme),
                  width: constraints.maxWidth / quantity * number,
                ),
                Center(
                  child: Text(
                    '$quantity аятов',
                    style: textBodySmall.copyWith(
                      color: typographyPrimary(themeState.theme),
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}

// @Preview(group: 'Scroll Position Widget', name: 'Light')
// Widget previewLight() => BlocProvider(
//   create: (context) => ThemeCubit(.new(.new())),
//   child: sizedWrapper(
//     const ScrollPositionWidget(
//       position: .new(.new(11), 0),
//       quantity: .new(12),
//     ),
//   ),
// );
