import 'package:bloc/bloc.dart';
import 'package:fpdart/fpdart.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tafsir/common/domain/error.dart';
import 'package:tafsir/settings/db/settings_db.dart';
import 'package:tafsir/settings/domain/ayah_font_type.dart';

part 'settings_state.dart';
part 'settings_cubit.freezed.dart';

class SettingsCubit extends Cubit<SettingsState> {
  SettingsCubit(this._db)
    : super(
        const .current(
          true,
          true,
          true,
          true,
          12,
          12,
          12,
          .uthmanTaha,
          null,
        ),
      );

  final SettingsDb _db;

  Future<void> inin() => TaskEither<AppError, void>.Do(
    ($) async {
      final showAyah = await $(_db.showAyah());
      final showTafsir = await $(_db.showTafsir());
      final showTranslation = await $(_db.showTranslation());
      final showFootnotes = await $(_db.showFootnotes());

      final ayahFontSize = await $(_db.getAyahFontSize());
      final tafsirFontSize = await $(_db.getTafsirFontSize());
      final translationFontSize = await $(_db.getTranlationFontSize());

      final ayahFontType = await $(_db.getAyahFontType());

      emit(
        .current(
          showAyah,
          showTafsir,
          showTranslation,
          showFootnotes,
          ayahFontSize,
          tafsirFontSize,
          translationFontSize,
          ayahFontType,
          null,
        ),
      );
    },
  ).mapLeft((l) => emit(state.copyWith(error: l))).run();

  Future<void> setShowAyah(bool value) =>
      TaskEither<AppError, void>.Do(($) async {
        emit(state.copyWith(showAyah: value));
        await $(_db.setShowAyah(value));
      }).mapLeft((l) => emit(state.copyWith(error: l))).run();

  Future<void> setShowTafsir(bool value) =>
      TaskEither<AppError, void>.Do(($) async {
        emit(state.copyWith(showTafsir: value));
        await $(_db.setShowTafsir(value));
      }).mapLeft((l) => emit(state.copyWith(error: l))).run();

  Future<void> setShowTranslation(bool value) =>
      TaskEither<AppError, void>.Do(($) async {
        emit(state.copyWith(showTranslation: value));
        await $(_db.setShowTranslation(value));
      }).mapLeft((l) => emit(state.copyWith(error: l))).run();

  Future<void> setShowFootnotes(bool value) =>
      TaskEither<AppError, void>.Do(($) async {
        emit(state.copyWith(showFootnotes: value));
        await $(_db.setShowFootnotes(value));
      }).mapLeft((l) => emit(state.copyWith(error: l))).run();

  Future<void> setAyahFontSize(double value) =>
      TaskEither<AppError, void>.Do(($) async {
        emit(state.copyWith(ayahFontSize: value));
        await $(_db.setAyahFontSize(value));
      }).mapLeft((l) => emit(state.copyWith(error: l))).run();

  Future<void> setTafsirFontSize(double value) =>
      TaskEither<AppError, void>.Do(($) async {
        emit(state.copyWith(tafsirFontSize: value));
        await $(_db.setTafsirFontSize(value));
      }).mapLeft((l) => emit(state.copyWith(error: l))).run();

  Future<void> setTranslationFontSize(double value) =>
      TaskEither<AppError, void>.Do(($) async {
        emit(state.copyWith(translationFontSize: value));
        await $(_db.setTranlationFontSize(value));
      }).mapLeft((l) => emit(state.copyWith(error: l))).run();

  Future<void> setAyahFontType(AyahFontType type) =>
      TaskEither<AppError, void>.Do(($) async {
        emit(state.copyWith(ayahFontType: type));
        await $(_db.setAyahFontType(type));
      }).mapLeft((l) => emit(state.copyWith(error: l))).run();
}
