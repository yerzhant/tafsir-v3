import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:tafsir/aayaat/domain/aayah.dart';
import 'package:tafsir/common/ui/app_theme.dart';
import 'package:tafsir/main/domain/surah.dart';

const _rowHeight = 43.0;
const _windowLegth = 7;
const _separatorHeight = 8.0;

class AayahSelector extends StatefulWidget {
  const AayahSelector({
    super.key,
    required this.theme,
    required this.suwar,
    required this.surahNumber,
    required this.aayahNumber,
    required this.aayaatWidth,

    required this.onChanged,
  });

  final AppTheme theme;
  final List<Surah> suwar;
  final double aayaatWidth;
  final SurahNumber surahNumber;
  final AayahNumber aayahNumber;

  final void Function(
    SurahNumber surahNumber,
    AayahNumber aayahNumber,
  )
  onChanged;

  @override
  State<AayahSelector> createState() => _AayahSelectorState();
}

class _AayahSelectorState extends State<AayahSelector> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: _windowLegth * (_rowHeight + _separatorHeight) - _separatorHeight,
      child: Stack(
        children: [
          Row(
            spacing: 8,
            children: [
              Expanded(
                child: ListView.separated(
                  itemCount: widget.suwar.length,
                  itemBuilder: (context, index) {
                    final surah = widget.suwar[index];

                    return _Cell(
                      theme: widget.theme,
                      title: '${surah.number}. ${surah.name}',
                      active: surah.number == widget.surahNumber,
                    );
                  },
                  separatorBuilder: (context, index) =>
                      const SizedBox(height: _separatorHeight),
                ),
              ),

              SizedBox(
                width: widget.aayaatWidth,
                child: ListView.separated(
                  itemBuilder: (context, index) => _Cell(
                    theme: widget.theme,
                    title: (index + 1).toString(),
                    active: widget.aayahNumber == index + 1,
                  ),
                  itemCount: widget.suwar[widget.surahNumber].quantity,
                  separatorBuilder: (context, index) => const SizedBox(
                    height: _separatorHeight,
                  ),
                ),
              ),
            ],
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
    required this.theme,
    required this.title,
    required this.active,
  });

  final AppTheme theme;
  final String title;
  final bool active;

  @override
  Widget build(BuildContext context) {
    return Container(
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
              color: active ? typographyLink(theme) : typographyPrimary(theme),
            ),
          ),
        ),
      ),
    );
  }
}

const _slices = 20;
const _maxBlur = 2;

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
        print('************************* $blur');
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
