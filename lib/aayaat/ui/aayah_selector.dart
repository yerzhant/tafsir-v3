import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tafsir/aayaat/cubit/go_to_aayah_cubit.dart';
import 'package:tafsir/aayaat/domain/aayah.dart';
import 'package:tafsir/common/ui/app_theme.dart';
import 'package:tafsir/main/domain/surah.dart';

const _rowHeight = 43.0;
const _windowLength = 7;
const _separatorHeight = 8.0;

const _padding = EdgeInsets.symmetric(
  vertical: 3 * (_rowHeight + _separatorHeight),
);

class AayahSelector extends StatefulWidget {
  const AayahSelector({
    super.key,
    required this.theme,
    required this.suwar,
    required this.surahNumber,
    required this.aayahNumber,
    required this.aayaatWidth,
  });

  final AppTheme theme;
  final List<Surah> suwar;
  final double aayaatWidth;
  final SurahNumber surahNumber;
  final AayahNumber aayahNumber;

  @override
  State<AayahSelector> createState() => _AayahSelectorState();
}

class _AayahSelectorState extends State<AayahSelector> {
  late final ScrollController _suwarController;
  late final ScrollController _aayaatController;

  late SurahNumber _surahNumber;
  late AayahNumber _aayahNumber;

  @override
  void initState() {
    super.initState();

    _surahNumber = widget.surahNumber;
    _aayahNumber = widget.aayahNumber;

    _suwarController = .new(
      initialScrollOffset: _getOffsetForNumber(_surahNumber),
    );

    _aayaatController = .new(
      initialScrollOffset: _getOffsetForNumber(_aayahNumber),
    );
  }

  @override
  void dispose() {
    _aayaatController.dispose();
    _suwarController.dispose();

    super.dispose();
  }

  double _getOffsetForNumber(int number) {
    return (number - 1) * (_rowHeight + _separatorHeight);
  }

  void _scrollTo(ScrollController controller, int number) {
    controller.animateTo(
      curve: Curves.easeInOut,
      _getOffsetForNumber(number),
      duration: const .new(milliseconds: 500),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height:
          _windowLength * (_rowHeight + _separatorHeight) - _separatorHeight,
      child: Stack(
        children: [
          BlocConsumer<GoToAayahCubit, GoToAayahState>(
            listener: (context, state) {
              if (state.surahNumber != _surahNumber) {
                _surahNumber = state.surahNumber;
                _scrollTo(_suwarController, _surahNumber);
              }

              if (state.aayahNumber != _aayahNumber) {
                _aayahNumber = state.aayahNumber;
                _scrollTo(_aayaatController, _aayahNumber);
              }
            },
            builder: (context, state) {
              return Row(
                spacing: 8,
                children: [
                  Expanded(
                    child: ListView.separated(
                      padding: _padding,
                      controller: _suwarController,
                      itemCount: widget.suwar.length,
                      itemBuilder: (context, index) {
                        final surah = widget.suwar[index];

                        return _Cell(
                          theme: widget.theme,
                          key: .new(surah.number.toString()),
                          active: _surahNumber == surah.number,
                          title: '${surah.number}. ${surah.name}',
                          onTap: () => context.read<GoToAayahCubit>().setSurah(
                            surah.number,
                          ),
                        );
                      },
                      separatorBuilder: (context, index) => const SizedBox(
                        height: _separatorHeight,
                      ),
                    ),
                  ),

                  SizedBox(
                    width: widget.aayaatWidth,
                    child: ListView.separated(
                      padding: _padding,
                      controller: _aayaatController,
                      itemBuilder: (context, index) => _Cell(
                        theme: widget.theme,
                        key: .new(index.toString()),
                        title: (index + 1).toString(),
                        active: _aayahNumber == index + 1,
                        onTap: () => context.read<GoToAayahCubit>().setAayah(
                          .new(index + 1),
                        ),
                      ),
                      itemCount: widget.suwar[_surahNumber - 1].quantity,
                      separatorBuilder: (context, index) => const SizedBox(
                        height: _separatorHeight,
                      ),
                    ),
                  ),
                ],
              );
            },
          ),

          const Positioned.fill(
            bottom: null,
            child: _Blur(
              direction: .up,
              curve: Curves.easeInCubic,
            ),
          ),

          const Positioned.fill(
            top: null,
            child: _Blur(
              direction: .down,
              curve: Curves.easeOutCubic,
            ),
          ),
        ],
      ),
    );
  }
}

class _Cell extends StatelessWidget {
  const _Cell({
    super.key,
    required this.onTap,
    required this.theme,
    required this.title,
    required this.active,
  });

  final VoidCallback onTap;
  final AppTheme theme;
  final String title;
  final bool active;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: _rowHeight,
        padding: const .symmetric(horizontal: 12),
        decoration: BoxDecoration(
          color: bgSecondary(theme),
          borderRadius: .circular(16),
          boxShadow: const [
            .new(
              blurRadius: 4,
              blurStyle: .outer,
              offset: .new(0, 2),
              color: Color(0x14A0A0A0),
            ),
          ],
          border: active ? .all(color: typographyLink(theme)) : null,
        ),
        child: Center(
          child: SizedBox(
            width: .infinity,
            child: Text(
              title,
              maxLines: 1,
              overflow: .ellipsis,
              style: textBodyReg.copyWith(
                color: active
                    ? typographyLink(theme)
                    : typographyPrimary(theme),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

const _slices = 25;
const _maxBlur = 2.5;

enum _BlurDirection { up, down }

class _Blur extends StatelessWidget {
  const _Blur({required this.direction, required this.curve});

  final Curve curve;
  final _BlurDirection direction;

  @override
  Widget build(BuildContext context) {
    return IgnorePointer(
      child: SizedBox(
        height: 2 * _rowHeight + _separatorHeight,
        child: _bslices(),
      ),
    );
  }

  Widget _bslices() {
    final slices = <Widget>[];

    const child = SizedBox.expand();

    for (var i = 0; i < _slices; i++) {
      final offset = i / (_slices - 1);

      final (a, b) = switch (direction) {
        .up => (_maxBlur, 0),
        .down => (0, _maxBlur),
      };

      final lerp = lerpDouble(a, b, curve.transform(offset))!;

      final blur = lerp.clamp(0, _maxBlur).toDouble();

      if (blur <= 0) {
        slices.add(const Expanded(child: child));
        continue;
      }

      slices.add(
        Expanded(
          child: RepaintBoundary(
            child: ClipRect(
              child: BackdropFilter(
                filter: .blur(
                  sigmaX: blur,
                  sigmaY: blur,
                ),
                child: child,
              ),
            ),
          ),
        ),
      );
    }

    return Flex(direction: .vertical, children: slices);
  }
}
