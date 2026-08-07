import 'package:fpdart/fpdart.dart';
import 'package:sqflite/sqflite.dart';
import 'package:tafsir/common/db/db_service.dart';
import 'package:tafsir/common/domain/error.dart';
import 'package:tafsir/common/ui/app_theme.dart';
import 'package:tafsir/theme/db/theme_db_param.dart';

const _themeParams = 'theme_params';

class ThemeDb {
  const ThemeDb(this._dbService);

  final DbService _dbService;

  static Future<void> init(Database db) async {
    await db.execute('''
      create table $_themeParams(
        key     text    not null    primary key,
        value   text    not null
      )
    ''');

    await db.insert(
      _themeParams,
      const ThemeDbParam(.sameAsInSystem, 'false').toJson(),
    );

    await db.insert(
      _themeParams,
      const ThemeDbParam(.doNotSwitchOffScreen, 'false').toJson(),
    );

    await db.insert(
      _themeParams,
      ThemeDbParam(.theme, AppTheme.light.name).toJson(),
    );
  }

  TaskEither<AppError, bool> sameAsInSystem() =>
      .Do(($) => $(_getBool(.sameAsInSystem)));

  TaskEither<AppError, void> setSameAsInSystem(bool value) =>
      .Do(($) => $(_setBool(.sameAsInSystem, value)));

  TaskEither<AppError, bool> doNotSwitchOffScreen() =>
      .Do(($) => $(_getBool(.doNotSwitchOffScreen)));

  TaskEither<AppError, void> setDoNotSwitchOffScreen(bool value) =>
      .Do(($) => $(_setBool(.doNotSwitchOffScreen, value)));

  TaskEither<AppError, AppTheme> getTheme() =>
      _dbService.db.toTaskEither().flatMap(
        (db) => .tryCatch(() async {
          final rows = await db.query(
            _themeParams,
            where: 'key = ?',
            whereArgs: [ThemeDbParamKey.theme.name],
          );

          final param = ThemeDbParam.fromJson(rows.first);

          return AppTheme.values.byName(param.value);
        }, ExceptionError.new),
      );

  TaskEither<AppError, void> setTheme(AppTheme theme) =>
      _dbService.db.toTaskEither().flatMap(
        (db) => .tryCatch(() async {
          final param = ThemeDbParam(.theme, theme.name);

          await db.update(
            _themeParams,
            param.toJson(),
            where: 'key = ?',
            whereArgs: [param.key.name],
          );
        }, ExceptionError.new),
      );

  TaskEither<AppError, bool> _getBool(ThemeDbParamKey key) =>
      _dbService.db.toTaskEither().flatMap(
        (db) => .tryCatch(() async {
          final rows = await db.query(
            _themeParams,
            where: 'key = ?',
            whereArgs: [key.name],
          );

          final param = ThemeDbParam.fromJson(rows.first);

          return .parse(param.value);
        }, ExceptionError.new),
      );

  TaskEither<AppError, void> _setBool(ThemeDbParamKey key, bool value) =>
      _dbService.db.toTaskEither().flatMap(
        (db) => .tryCatch(() async {
          final param = ThemeDbParam(key, value.toString());

          await db.update(
            _themeParams,
            param.toJson(),
            where: 'key = ?',
            whereArgs: [param.key.name],
          );
        }, ExceptionError.new),
      );
}
