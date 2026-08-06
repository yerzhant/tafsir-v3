import 'package:sqflite/sqflite.dart';
import 'package:tafsir/common/db/db_service.dart';

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
        info          text,
        djuz          text,
        place         text,
        translation   text,
        quantity      integer
      )
    ''');

    await db.execute('''
      create table $_adjzaa(
        number        integer     not null    primary key,
        from          text        not null,
        to            text        not null,
        place         text
      )
    ''');

    await db.execute('''
      create table $_muqaddimat(
        type         text        not null    primary key,
        content      text        not null
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
}
