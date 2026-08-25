import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:fpdart/fpdart.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tafsir/aayaat/domain/aayah.dart';
import 'package:tafsir/aayaat/domain/player.dart';
import 'package:tafsir/aayaat/domain/player_position.dart';
import 'package:tafsir/common/domain/error.dart';
import 'package:tafsir/main/domain/surah.dart';

part 'player_state.dart';
part 'player_cubit.freezed.dart';

class PlayerCubit extends Cubit<PlayerState> {
  PlayerCubit(this._player) : super(const .inactive());

  final Player _player;

  StreamSubscription<PlayerPosition>? _positions;

  Future<void> play(SurahNumber surahNumber, AayahNumber aayahNumber) =>
      TaskEither<AppError, void>.Do(
        ($) async {
          _positions?.cancel();

          emit(const .playing(false, false, false, .new(0, 'Загрузка...')));

          await $(_player.init());
          await $(_player.play(surahNumber, aayahNumber));

          _positions = _player.getPositionStream().listen(
            (event) {
              if (state is! PlayerStatePlaying) {
                _positions?.cancel();
                return;
              }

              emit((state as PlayerStatePlaying).copyWith(position: event));
            },
            onError: (error, trace) => emit(.failure(.exception(error, trace))),
            onDone: () => emit(const .inactive()),
          );

          emit((state as PlayerStatePlaying).copyWith(isReady: true));
        },
      ).mapLeft((l) => emit(.failure(l))).run();

  Future<void> pause() => TaskEither<AppError, void>.Do(
    ($) async {
      final s = state as PlayerStatePlaying;
      final isPaused = !s.isPaused;

      await $(_player.setPause(isPaused));

      emit(s.copyWith(isPaused: isPaused));
    },
  ).mapLeft((l) => emit(.failure(l))).run();

  Future<void> loop() => TaskEither<AppError, void>.Do(
    ($) async {
      final s = state as PlayerStatePlaying;
      final isLooping = !s.isLooping;

      await $(_player.setLooping(isLooping));

      emit(s.copyWith(isLooping: isLooping));
    },
  ).mapLeft((l) => emit(.failure(l))).run();

  Future<void> stop() => TaskEither<AppError, void>.Do(
    ($) async {
      await _positions?.cancel();
      emit(const .inactive());
      await $(_player.stop());
    },
  ).mapLeft((l) => emit(.failure(l))).run();

  @override
  Future<void> close() async {
    await stop();
    return super.close();
  }
}
