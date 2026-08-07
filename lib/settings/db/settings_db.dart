import 'package:fpdart/fpdart.dart';
import 'package:sqflite/sqflite.dart';
import 'package:tafsir/common/db/db_service.dart';
import 'package:tafsir/common/domain/error.dart';
import 'package:tafsir/settings/db/setting_db_param.dart';
import 'package:tafsir/settings/domain/ayah_font_type.dart';

const _settings = 'settings';

class SettingsDb {
  const SettingsDb(this._dbService);

  final DbService _dbService;

  static Future<void> init(Database db) async {
    await db.execute('''
      create table $_settings(
        key     text    not null    primary key,
        value   text    not null
      )
    ''');

    await db.insert(
      _settings,
      const SettingDbParam(.showAyah, 'true').toJson(),
    );

    await db.insert(
      _settings,
      const SettingDbParam(.showTafsir, 'true').toJson(),
    );

    await db.insert(
      _settings,
      const SettingDbParam(.showTranslation, 'true').toJson(),
    );

    await db.insert(
      _settings,
      const SettingDbParam(.showFootnotes, 'true').toJson(),
    );

    await db.insert(
      _settings,
      const SettingDbParam(.ayahFontSize, '12').toJson(),
    );

    await db.insert(
      _settings,
      const SettingDbParam(.tranlationFontSize, '12').toJson(),
    );

    await db.insert(
      _settings,
      SettingDbParam(.ayayFonType, AyahFontType.uthmanTaha.name).toJson(),
    );
  }

  TaskEither<AppError, bool> showAyah() => .Do(($) => $(_getBool(.showAyah)));

  TaskEither<AppError, void> setShowAyah(bool value) =>
      .Do(($) => $(_setBool(.showAyah, value)));

  TaskEither<AppError, bool> showTafsir() =>
      .Do(($) => $(_getBool(.showTafsir)));

  TaskEither<AppError, void> setShowTafsir(bool value) =>
      .Do(($) => $(_setBool(.showTafsir, value)));

  TaskEither<AppError, bool> showTranslation() =>
      .Do(($) => $(_getBool(.showTranslation)));

  TaskEither<AppError, void> setShowTranslation(bool value) =>
      .Do(($) => $(_setBool(.showTranslation, value)));

  TaskEither<AppError, bool> showFootnotes() =>
      .Do(($) => $(_getBool(.showFootnotes)));

  TaskEither<AppError, void> setShowFootnotes(bool value) =>
      .Do(($) => $(_setBool(.showFootnotes, value)));

  TaskEither<AppError, double> getAyahFontSize() =>
      .Do(($) => $(_getDouble(.ayahFontSize)));

  TaskEither<AppError, void> setAyahFontSize(double value) =>
      .Do(($) => $(_setDouble(.ayahFontSize, value)));

  TaskEither<AppError, double> getTranlationFontSize() =>
      .Do(($) => $(_getDouble(.tranlationFontSize)));

  TaskEither<AppError, void> setTranlationFontSize(double value) =>
      .Do(($) => $(_setDouble(.tranlationFontSize, value)));

  TaskEither<AppError, AyahFontType> getAyahFontType() =>
      _dbService.db.toTaskEither().flatMap(
        (db) => .tryCatch(() async {
          final rows = await db.query(
            _settings,
            where: 'key = ?',
            whereArgs: [SettingDbParamKey.ayayFonType.name],
          );

          final param = SettingDbParam.fromJson(rows.first);

          return AyahFontType.values.byName(param.value);
        }, ExceptionError.new),
      );

  TaskEither<AppError, void> setAyahFontType(AyahFontType font) =>
      _dbService.db.toTaskEither().flatMap(
        (db) => .tryCatch(() async {
          final param = SettingDbParam(.ayayFonType, font.name);

          await db.update(
            _settings,
            param.toJson(),
            where: 'key = ?',
            whereArgs: [param.key.name],
          );
        }, ExceptionError.new),
      );

  TaskEither<AppError, bool> _getBool(SettingDbParamKey key) =>
      _dbService.db.toTaskEither().flatMap(
        (db) => .tryCatch(() async {
          final rows = await db.query(
            _settings,
            where: 'key = ?',
            whereArgs: [key.name],
          );

          final param = SettingDbParam.fromJson(rows.first);

          return .parse(param.value);
        }, ExceptionError.new),
      );

  TaskEither<AppError, void> _setBool(SettingDbParamKey key, bool value) =>
      _dbService.db.toTaskEither().flatMap(
        (db) => .tryCatch(() async {
          final param = SettingDbParam(key, value.toString());

          await db.update(
            _settings,
            param.toJson(),
            where: 'key = ?',
            whereArgs: [param.key.name],
          );
        }, ExceptionError.new),
      );

  TaskEither<AppError, double> _getDouble(SettingDbParamKey key) =>
      _dbService.db.toTaskEither().flatMap(
        (db) => .tryCatch(() async {
          final rows = await db.query(
            _settings,
            where: 'key = ?',
            whereArgs: [key.name],
          );

          final param = SettingDbParam.fromJson(rows.first);

          return .parse(param.value);
        }, ExceptionError.new),
      );

  TaskEither<AppError, void> _setDouble(SettingDbParamKey key, double value) =>
      _dbService.db.toTaskEither().flatMap(
        (db) => .tryCatch(() async {
          final param = SettingDbParam(key, value.toString());

          await db.update(
            _settings,
            param.toJson(),
            where: 'key = ?',
            whereArgs: [param.key.name],
          );
        }, ExceptionError.new),
      );
}
