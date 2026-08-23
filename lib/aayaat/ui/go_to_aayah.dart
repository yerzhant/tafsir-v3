import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/widget_previews.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tafsir/aayaat/domain/aayah.dart';
import 'package:tafsir/aayaat/ui/aayah_selector.dart';
import 'package:tafsir/common/ui/app_button.dart';
import 'package:tafsir/common/ui/app_theme.dart';
import 'package:tafsir/common/ui/preview.dart';
import 'package:tafsir/main/domain/surah.dart';
import 'package:tafsir/theme/cubit/theme_cubit.dart';

const _aayaatWidth = 92.0;

class GoToAayah extends StatefulWidget {
  const GoToAayah({
    super.key,
    required this.suwar,
    required this.onGoTo,
    required this.surahNumber,
    required this.aayahNumber,
  });

  final List<Surah> suwar;
  final SurahNumber surahNumber;
  final AayahNumber aayahNumber;
  final ValueSetter<int> onGoTo;

  @override
  State<GoToAayah> createState() => _GoToAayahState();
}

class _GoToAayahState extends State<GoToAayah> {
  final _surahController = TextEditingController();
  final _aayahController = TextEditingController();

  @override
  void dispose() {
    _surahController.dispose();
    _aayahController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ThemeCubit, ThemeState>(
      builder: (context, state) {
        return Column(
          spacing: 12,
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
              onChanged: (surahNumber, aayahNumber) {},
            ),

            AppButton(
              title: 'Перейти',
              theme: state.theme,
              onTap: () {
                final aayah = int.tryParse(_aayahController.text);

                if (aayah == null) return;

                widget.onGoTo(aayah);
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
        hintStyle: textBodyReg.copyWith(color: typographyTertirary(theme)),
      ),
    );
  }
}

@Preview(group: 'Go To Aayah')
Widget previewLight() => sizedWrapper(
  themeWrapper(
    GoToAayah(
      surahNumber: const .new(3),
      aayahNumber: const .new(3),
      onGoTo: (value) => print('on go to: $value'),
      suwar: .generate(
        114,
        (index) => .new(
          .new(index + 1),
           .new(_generateRandomString(23)),
          const .new('value'),
          const .new('value'),
          .madinah,
          const .new('value'),
          .new(Random().nextInt(286)),
        ),
      ),
    ),
  ),
  width: 400,
  hight: 600,
);

String _generateRandomString(int length) {
  const chars = 'abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789         ';
  final random = Random();
  
  return List.generate(length, (index) => chars[random.nextInt(chars.length)]).join();
}