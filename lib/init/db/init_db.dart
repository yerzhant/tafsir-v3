import 'package:fpdart/fpdart.dart';
import 'package:sqflite/sqflite.dart';
import 'package:tafsir/common/db/db_service.dart';
import 'package:tafsir/common/domain/error.dart';
import 'package:tafsir/init/db/init_db_param.dart';

const _initParams = 'init_params';

class InitDb {
  const InitDb(this._dbService);

  final DbService _dbService;

  static Future<void> init(Database db) async {
    await db.execute('''
      create table $_initParams(
        key     text    not null    primary key,
        value   text    not null
      )
    ''');

    await db.insert(
      _initParams,
      const InitDbParam(.initialized, 'false').toJson(),
    );
  }

  TaskEither<AppError, bool> initialized() =>
      .Do(($) => $(_getBool(.initialized)));

  TaskEither<AppError, void> setInitialized() =>
      .Do(($) => $(_setBool(.initialized, true)));

  TaskEither<AppError, bool> _getBool(InitDbParamKey key) =>
      _dbService.db.toTaskEither().flatMap(
        (db) => .tryCatch(() async {
          final rows = await db.query(
            _initParams,
            where: 'key = ?',
            whereArgs: [key.name],
          );

          final param = InitDbParam.fromJson(rows.first);

          return .parse(param.value);
        }, ExceptionError.new),
      );

  TaskEither<AppError, void> _setBool(InitDbParamKey key, bool value) =>
      _dbService.db.toTaskEither().flatMap(
        (db) => .tryCatch(() async {
          final param = InitDbParam(key, value.toString());

          await db.update(
            _initParams,
            param.toJson(),
            where: 'key = ?',
            whereArgs: [param.key.name],
          );
        }, ExceptionError.new),
      );
}
