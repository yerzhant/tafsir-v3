import 'package:fpdart/fpdart.dart';
import 'package:sqflite/sqflite.dart';
import 'package:tafsir/aayaat/domain/aayah.dart';
import 'package:tafsir/common/db/db_service.dart';
import 'package:tafsir/common/domain/error.dart';
import 'package:tafsir/main/db/bookmark_row.dart';
import 'package:tafsir/main/db/djuz_row.dart';
import 'package:tafsir/main/db/last_read_row.dart';
import 'package:tafsir/main/db/muqaddimah_row.dart';
import 'package:tafsir/main/db/surah_row.dart';
import 'package:tafsir/main/domain/bookmark.dart';
import 'package:tafsir/main/domain/djuz.dart';
import 'package:tafsir/main/domain/last_read.dart';
import 'package:tafsir/main/domain/muqaddimah.dart';
import 'package:tafsir/main/domain/surah.dart';

const _suwar = 'suwar';
const _adjzaa = 'adjzaa';
const _bookmarks = 'bookmarks';
const _lastReads = 'last_reads';
const _muqaddimat = 'muqaddimat';

class MainDb {
  const MainDb(this._dbService);

  final DbService _dbService;

  static Future<void> init(Database db) async {
    await db.execute('''
      create table $_suwar(
        number        integer     not null    primary key,
        name          text        not null,
        info          text        not null,
        djuz          text        not null,
        quantity      integer     not null,
        place         text,
        translation   text
      )
    ''');

    await db.execute('''
      create table $_adjzaa(
        number        integer     not null    primary key,
        from_surah    integer     not null,
        from_aayah    integer     not null,
        to_surah      integer     not null,
        to_aayah      integer     not null,
        place         text        not null
      )
    ''');

    await db.execute('''
      create table $_muqaddimat(
        weight        number      not null    primary key,
        type          text        not null,
        title         text        not null,
        content       text        not null
      )
    ''');

    await db.execute('''
      create table $_lastReads(
        timestamp     integer     not null    primary key,
        surah_number  integer     not null,
        aayah_number  integer     not null,
        alignment     real        not null
      )
    ''');

    await db.execute('''
      create table $_bookmarks(
        surah_number  integer     not null,
        aayah_number  integer     not null,

        constraint ${_bookmarks}_pk primary key (surah_number, aayah_number)
      )
    ''');
  }

  TaskEither<AppError, List<Surah>> getSuwar() =>
      _dbService.db.toTaskEither().flatMap(
        (db) => .tryCatch(() async {
          final rows = await db.query(_suwar, orderBy: 'number');
          return [for (final row in rows) SurahRow.fromJson(row).toDomain()];
        }, ExceptionError.new),
      );

  TaskEither<AppError, void> addSurah(Batch batch, SurahRow row) => .tryCatch(
    () async => batch.insert(_suwar, row.toJson()),
    ExceptionError.new,
  );

  TaskEither<AppError, List<Djuz>> getAdjzaa() => _dbService.db
      .toTaskEither()
      .flatMap(
        (db) => .tryCatch(
          () => db.query(_adjzaa, orderBy: 'number'),
          ExceptionError.new,
        ),
      )
      .flatMap(
        (rows) => .Do(
          ($) => rows.map(
            (e) async {
              final row = DjuzRow.fromJson(e);
              final from = await $(getSurah(row.fromSurah));
              final to = await $(getSurah(row.toSurah));
              return row.toDomain(from.name, to.name);
            },
          ).wait,
        ),
      );

  TaskEither<AppError, void> addDjuz(Batch batch, DjuzRow row) => .tryCatch(
    () async => batch.insert(_adjzaa, row.toJson()),
    ExceptionError.new,
  );

  TaskEither<AppError, List<Muqaddimah>> getMuqaddimat() =>
      _dbService.db.toTaskEither().flatMap(
        (db) => .tryCatch(() async {
          final rows = await db.query(_muqaddimat, orderBy: 'weight');
          return [
            for (final row in rows) MuqaddimahRow.fromJson(row).toDomain(),
          ];
        }, ExceptionError.new),
      );

  TaskEither<AppError, void> addMuqaddimah(Batch batch, MuqaddimahRow row) =>
      .tryCatch(
        () async => batch.insert(_muqaddimat, row.toJson()),
        ExceptionError.new,
      );

  TaskEither<AppError, List<LastRead>> getLastReads() => _dbService.db
      .toTaskEither()
      .flatMap(
        (db) => .tryCatch(
          () => db.query(_lastReads, orderBy: 'timestamp desc'),
          ExceptionError.new,
        ),
      )
      .flatMap(
        (rows) => .Do(
          ($) => rows.map(
            (e) async {
              final row = LastReadRow.fromJson(e);
              final surah = await $(getSurah(row.surahNumber));
              return row.toDomain(surah);
            },
          ).wait,
        ),
      );

  TaskEither<AppError, void> addLastRead(LastRead lastRead) =>
      _dbService.db.toTaskEither().flatMap(
        (db) => .tryCatch(
          () => db.insert(
            _lastReads,
            LastReadRow.fromDomain(lastRead).toJson(),
          ),
          ExceptionError.new,
        ),
      );

  TaskEither<AppError, void> removeLastRead(LastRead lastRead) =>
      _dbService.db.toTaskEither().flatMap(
        (db) => .tryCatch(
          () => db.delete(
            _lastReads,
            where: 'timestamp = ?',
            whereArgs: [lastRead.timestamp.microsecondsSinceEpoch],
          ),
          ExceptionError.new,
        ),
      );

  TaskEither<AppError, List<Bookmark>> getBookmarks() => _dbService.db
      .toTaskEither()
      .flatMap(
        (db) => .tryCatch(
          () => db.query(_bookmarks, orderBy: 'surah_number, aayah_number'),
          ExceptionError.new,
        ),
      )
      .flatMap(
        (rows) => .Do(
          ($) => rows.map(
            (e) async {
              final row = BookmarkRow.fromJson(e);
              final surah = await $(getSurah(row.surahNumber));
              return Bookmark(surah.number, surah.name, row.aayahNumber);
            },
          ).wait,
        ),
      );

  TaskEither<AppError, Set<AayahNumber>> getBookmarkAayahNumbersForSurah(
    Surah surah,
  ) => _dbService.db.toTaskEither().flatMap(
    (db) => .tryCatch(() async {
      final rows = await db.query(
        _bookmarks,
        where: 'surah_number = ?',
        whereArgs: [surah.number],
      );

      return rows.map((e) => BookmarkRow.fromJson(e).aayahNumber).toSet();
    }, ExceptionError.new),
  );

  TaskEither<AppError, void> addBookmark(
    SurahNumber surahNumber,
    AayahNumber aayahNumber,
  ) => _dbService.db.toTaskEither().flatMap(
    (db) => .tryCatch(
      () => db.insert(
        _bookmarks,
        BookmarkRow(surahNumber, aayahNumber).toJson(),
      ),
      ExceptionError.new,
    ),
  );

  TaskEither<AppError, void> removeBookmark(
    SurahNumber surahNumber,
    AayahNumber aayahNumber,
  ) => _dbService.db.toTaskEither().flatMap(
    (db) => .tryCatch(
      () => db.delete(
        _bookmarks,
        where: 'surah_number = ? and aayah_number = ?',
        whereArgs: [surahNumber, aayahNumber],
      ),
      ExceptionError.new,
    ),
  );

  TaskEither<AppError, void> cleanUp() => _dbService.db.toTaskEither().flatMap(
    (db) => .tryCatch(() async {
      await db.delete(_adjzaa);
      await db.delete(_suwar);
      await db.delete(_muqaddimat);
    }, ExceptionError.new),
  );

  TaskEither<AppError, Surah> getSurah(SurahNumber number) =>
      _dbService.db.toTaskEither().flatMap(
        (db) => .tryCatch(() async {
          final rows = await db.query(
            _suwar,
            where: 'number = ?',
            whereArgs: [number],
          );

          return SurahRow.fromJson(rows.first).toDomain();
        }, ExceptionError.new),
      );
}
