import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tafsir/aayaat/domain/aayah.dart';
import 'package:tafsir/aayaat/ui/aayah_selector.dart';
import 'package:tafsir/aayaat/ui/surah_page.dart';
import 'package:tafsir/common/ui/app_button.dart';
import 'package:tafsir/common/ui/app_theme.dart';
import 'package:tafsir/main/cubit/main_cubit.dart';
import 'package:tafsir/main/domain/surah.dart';
import 'package:tafsir/theme/cubit/theme_cubit.dart';

const _aayaatWidth = 92.0;

class GoToAayah extends StatefulWidget {
  const GoToAayah({
    super.key,
    required this.suwar,
    required this.onGoTo,
    required this.mainCubit,
    required this.surahNumber,
    required this.aayahNumber,
  });

  final List<Surah> suwar;
  final MainCubit mainCubit;
  final SurahNumber surahNumber;
  final AayahNumber aayahNumber;
  final ValueSetter<AayahNumber> onGoTo;

  @override
  State<GoToAayah> createState() => _GoToAayahState();
}

class _GoToAayahState extends State<GoToAayah> {
  final _surahController = TextEditingController();
  final _aayahController = TextEditingController();

  late SurahNumber _surahNumber;
  late AayahNumber _aayahNumber;

  @override
  void initState() {
    super.initState();

    _surahNumber = widget.surahNumber;
    _aayahNumber = widget.aayahNumber;
  }

  @override
  void dispose() {
    _aayahController.dispose();
    _surahController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ThemeCubit, ThemeState>(
      builder: (context, state) {
        return Column(
          spacing: 12,
          mainAxisSize: .min,
          children: [
            Row(
              spacing: 8,
              children: [
                Expanded(
                  child: _Field(
                    hint: 'Название или номер суры',
                    theme: state.theme,
                    controller: _surahController,
                  ),
                ),
                SizedBox(
                  width: _aayaatWidth,
                  child: _Field(
                    hint: '№ аята',
                    inputType: .number,
                    theme: state.theme,
                    controller: _aayahController,
                  ),
                ),
              ],
            ),

            AayahSelector(
              theme: state.theme,
              suwar: widget.suwar,
              surahNumber: widget.surahNumber,
              aayahNumber: widget.aayahNumber,
              aayaatWidth: _aayaatWidth,
              onChanged: (surahNumber, aayahNumber) {
                _surahNumber = surahNumber;
                _aayahNumber = aayahNumber;
              },
            ),

            AppButton(
              title: 'Перейти',
              theme: state.theme,
              onTap: () {
                Navigator.pop(context);

                final surah = int.tryParse(_surahController.text);
                final aayah = int.tryParse(_aayahController.text);

                if (surah != null &&
                    aayah != null &&
                    surah >= 1 &&
                    surah <= 114) {
                  Navigator.pop(context);

                  SurahPage.open(
                    context,
                    widget.mainCubit,
                    widget.suwar,
                    .new(surah),
                    .new(.new(aayah), 0),
                  );

                  return;
                }

                if (aayah != null) {
                  widget.onGoTo(.new(aayah));
                }
              },
            ),
          ],
        );
      },
    );
  }
}

class _Field extends StatelessWidget {
  const _Field({
    this.inputType,
    required this.hint,
    required this.theme,
    required this.controller,
  });

  final String hint;
  final AppTheme theme;
  final TextInputType? inputType;
  final TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      keyboardType: inputType,
      decoration: InputDecoration(
        enabledBorder: OutlineInputBorder(
          borderRadius: .circular(9999),
          borderSide: .new(color: borderPrimary(theme)),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: .circular(9999),
          borderSide: .new(color: borderPrimary(theme)),
        ),
        contentPadding: const .symmetric(
          horizontal: 16,
          vertical: 12,
        ),
        filled: true,
        fillColor: bgSecondary(theme),
        hintText: hint,
        hintStyle: textBodyMedium.copyWith(color: typographyTertirary(theme)),
      ),
    );
  }
}

// @Preview(group: 'Go To Aayah')
// Widget previewLight() => sizedWrapper(
//   themeWrapper(
//     GoToAayah(
//       surahNumber: const .new(33),
//       aayahNumber: const .new(1),
//       onGoTo: (value) => print('on go to: $value'),
//       suwar: .generate(
//         114,
//         (index) => .new(
//           .new(index + 1),
//           .new(_generateRandomString(23)),
//           const .new('value'),
//           const .new('value'),
//           .madinah,
//           const .new('value'),
//           .new(Random().nextInt(286)),
//         ),
//       ),
//     ),
//   ),
//   width: 400,
//   hight: 600,
// );

// String _generateRandomString(int length) {
//   const chars =
//       'abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789         ';
//   final random = Random();

//   return List.generate(
//     length,
//     (index) => chars[random.nextInt(chars.length)],
//   ).join();
// }
