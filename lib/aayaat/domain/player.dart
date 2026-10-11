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
  late Duration _length;
  late SoundHandle _handle;

  TaskEither<AppError, void> init() => .tryCatch(
    () async {
      if (!_player.isInitialized) {
        await _player.init();
      }
    },
    ExceptionError.new,
  );

  TaskEither<AppError, void> play(
    SurahNumber surahNumber,
    AayahNumber aayahNumber,
  ) => .tryCatch(() async {
    await _player.disposeAllSources();

    final surah = surahNumber.toString().padLeft(3, '0');
    final aayah = aayahNumber.toString().padLeft(3, '0');

    final source = await _player.loadUrl(
      'https://azan.info/upload/Quran/abu-bakr-al-shatri/$surah/$surah$aayah.mp3',
      autoDispose: true,
    );

    _length = _player.getLength(source);

    _handle = _player.play(source);
  }, ExceptionError.new);

  Stream<PlayerPosition> getPositionStream() {
    late StreamController<PlayerPosition> controller;
    Timer? timer;

    controller = StreamController<PlayerPosition>(
      onListen: () {
        timer = Timer.periodic(
          const .new(milliseconds: 200),
          (_) {
            if (!_player.isInitialized ||
                !_player.getIsValidVoiceHandle(_handle)) {
              timer?.cancel();
              controller.close();
              return;
            }

            final current = _player.getPosition(_handle);
            final position = current.inMilliseconds / _length.inMilliseconds;
            final title = '${current.inSeconds} / ${_length.inSeconds} сек';

            controller.add(.new(position, title));
          },
        );
      },
      onCancel: () => timer?.cancel(),
    );

    return controller.stream;
  }

  TaskEither<AppError, void> setPause(bool value) => .tryCatch(() async {
    _player.setPause(_handle, value);
  }, ExceptionError.new);

  TaskEither<AppError, void> setLooping(bool value) => .tryCatch(() async {
    _player.setLooping(_handle, value);
  }, ExceptionError.new);

  TaskEither<AppError, void> stop() => .tryCatch(
    () => _player.stop(_handle),
    ExceptionError.new,
  );

  void deinit() => _player.deinit();
}
