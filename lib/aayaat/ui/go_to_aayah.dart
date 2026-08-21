import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tafsir/common/ui/app_button.dart';
import 'package:tafsir/common/ui/app_theme.dart';
import 'package:tafsir/theme/cubit/theme_cubit.dart';

class GoToAayah extends StatefulWidget {
  const GoToAayah({super.key, required this.onSet});

  final ValueSetter<int> onSet;

  @override
  State<GoToAayah> createState() => _GoToAayahState();
}

class _GoToAayahState extends State<GoToAayah> {
  final _aayahController = TextEditingController();

  @override
  void dispose() {
    _aayahController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ThemeCubit, ThemeState>(
      builder: (context, state) {
        return Column(
          spacing: 20,
          mainAxisSize: .min,
          children: [
            TextField(
              autofocus: true,
              controller: _aayahController,
              decoration: InputDecoration(
                enabledBorder: OutlineInputBorder(
                  borderRadius: .circular(9999),
                  borderSide: .new(color: borderPrimary(state.theme)),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: .circular(9999),
                  borderSide: .new(color: borderPrimary(state.theme)),
                ),
                contentPadding: const .symmetric(
                  horizontal: 16,
                  vertical: 12,
                ),
                filled: true,
                fillColor: bgSecondary(state.theme),
                hintText: '№ аята',
                hintStyle: textBodyReg.copyWith(
                  color: typographyTertirary(state.theme),
                ),
                alignLabelWithHint: true,
              ),
              keyboardType: .number,
              textAlign: .center,
            ),

            AppButton(
              title: 'Перейти',
              theme: state.theme,
              onTap: () {
                final aayah = int.tryParse(_aayahController.text);

                if (aayah == null) return;

                widget.onSet(aayah);
              },
            ),
          ],
        );
      },
    );
  }
}
