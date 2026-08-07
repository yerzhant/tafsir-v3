import 'package:fpdart/fpdart.dart';
import 'package:sqflite/sqflite.dart';
import 'package:tafsir/common/domain/error.dart';
import 'package:tafsir/init/db/init_db.dart';
import 'package:tafsir/main/db/main_db.dart';
import 'package:tafsir/settings/db/settings_db.dart';
import 'package:tafsir/theme/db/theme_db.dart';

class DbService {
  late final Database? _database;

  TaskEither<AppError, void> open() => .tryCatch(() async {
    _database = await openDatabase(
      'app.db',
      version: 3,
      onCreate: (db, version) async {
        await InitDb.init(db);
        await ThemeDb.init(db);
        await SettingsDb.init(db);
        await MainDb.init(db);
      },
      onUpgrade: (db, oldVersion, newVersion) async {
        if (oldVersion < 3) {
          await InitDb.init(db);
          await ThemeDb.init(db);
          await SettingsDb.init(db);
          await MainDb.init(db);

          print('*********************************** DELETING');
          await db.execute('dtop table aayah');
          await db.execute('dtop table surah');
          await db.execute(
            'dtop table bookmark',
          ); // TODO: migrate before deletion
          print(
            '*********************************** DELETING OK ************************************',
          );
        }
      },
    );
  }, ExceptionError.new);

  Either<AppError, Database> get db => Either.fromNullable(
    _database,
    () => const GeneralError('Database is not open.'),
  );

  Future<void> close() async => _database?.close();
}
