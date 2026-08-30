import 'package:fpdart/fpdart.dart';
import 'package:sqflite/sqflite.dart';
import 'package:tafsir/aayaat/db/aayah_row.dart';
import 'package:tafsir/aayaat/domain/aayah.dart';
import 'package:tafsir/common/db/db_service.dart';
import 'package:tafsir/common/domain/error.dart';
import 'package:tafsir/main/domain/surah.dart';

const _aayaat = 'aayaat';

class AayaatDb {
  const AayaatDb(this._dbService);

  final DbService _dbService;

  static Future<void> init(Database db) async {
    await db.execute('''
      create table $_aayaat(
        surah_number        integer     not null,
        aayah_number        integer     not null,
        arabic              text,
        tafsir              text,
        translation         text,

        constraint ${_aayaat}_pk primary key (surah_number, aayah_number)
      )
    ''');
  }

  TaskEither<AppError, List<Aayah>> getAayaat(Surah surah) =>
      _dbService.db.toTaskEither().flatMap(
        (db) => .tryCatch(() async {
          final rows = await db.query(
            _aayaat,
            where: 'surah_number = ?',
            whereArgs: [surah.number],
            orderBy: 'aayah_number',
          );

          return [for (final row in rows) AayahRow.fromJson(row).toDomain()];
        }, ExceptionError.new),
      );

  TaskEither<AppError, void> addAayah(Batch batch, AayahRow row) => .tryCatch(
    () async => batch.insert(_aayaat, row.toJson()),
    ExceptionError.new,
  );

  TaskEither<AppError, void> cleanUp() => _dbService.db.toTaskEither().flatMap(
    (db) => .tryCatch(() => db.delete(_aayaat), ExceptionError.new),
  );
}
