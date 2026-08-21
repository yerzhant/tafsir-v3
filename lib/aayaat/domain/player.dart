import 'dart:async';

import 'package:flutter_soloud/flutter_soloud.dart';
import 'package:fpdart/fpdart.dart';
import 'package:tafsir/aayaat/domain/aayah.dart';
import 'package:tafsir/aayaat/domain/player_position.dart';
import 'package:tafsir/common/domain/error.dart';
import 'package:tafsir/main/domain/surah.dart';

class Player {
  Player() : _player = SoLoud.instance;

  final SoLoud _player;

  late final Duration _length;
  late final SoundHandle _handle;

  TaskEither<AppError, void> play(
    SurahNumber surahNumber,
    AayahNumber aayahNumber,
  ) => .tryCatch(() async {
    await _player.init();

    await _player.disposeAllSources();

    final surah = surahNumber.toString().padLeft(3, '0');
    final aayah = aayahNumber.toString().padLeft(3, '0');

    final source = await _player.loadUrl(
      'https://azan.ru/upload/Quran/abu-bakr-al-shatri/$surah/$surah$aayah.mp3',
      autoDispose: true,
    );

    _length = _player.getLength(source);

    _handle = _player.play(source);
  }, ExceptionError.new);

  TaskEither<AppError, Stream<PlayerPosition>> getPositionStream() =>
      .tryCatch(() async {
        Timer? timer;
        late StreamController<PlayerPosition> controller;

        controller = StreamController<PlayerPosition>(
          onListen: () {
            timer = Timer.periodic(
              const .new(milliseconds: 500),
              (_) {
                if (!_player.getIsValidVoiceHandle(_handle)) {
                  timer?.cancel();
                  controller.close();
                  return;
                }

                final current = _player.getPosition(_handle);
                final position =
                    current.inMilliseconds / _length.inMilliseconds * 100;
                final title = '${current.inSeconds} / ${_length.inSeconds} сек';

                controller.add(.new(position, title));
              },
            );
          },
          onCancel: () => timer?.cancel(),
        );

        return controller.stream;
      }, ExceptionError.new);

  TaskEither<AppError, void> setPause(bool value) => .tryCatch(() async {
    _player.setPause(_handle, value);
  }, ExceptionError.new);

  TaskEither<AppError, void> setLooping(bool value) => .tryCatch(() async {
    _player.setLooping(_handle, value);
  }, ExceptionError.new);

  TaskEither<AppError, void> stop() => .tryCatch(() async {
    await _player.stop(_handle);
    await _player.deinitAsync();
  }, ExceptionError.new);
}
