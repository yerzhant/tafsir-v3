import 'package:fpdart/fpdart.dart';
import 'package:sqflite/sqflite.dart';
import 'package:tafsir/common/db/db_service.dart';
import 'package:tafsir/common/domain/error.dart';
import 'package:tafsir/search/db/search_content_row.dart';
import 'package:tafsir/search/db/search_result_row.dart';
import 'package:tafsir/search/domain/search_content.dart';

const _aayahContents = 'aayah_search_contents';

class SearchDb {
  const SearchDb(this._dbService);

  final DbService _dbService;

  static Future<void> init(Database db) async {
    await db.execute('''
      create table $_aayahContents(
        surah_number        integer     not null,
        aayah_number        integer     not null,
        content             text,

        constraint ${_aayahContents}_pk primary key (surah_number, aayah_number)
      )
    ''');
  }

  TaskEither<AppError, List<SearchContent>> getAll() =>
      _dbService.db.toTaskEither().flatMap(
        (db) => .tryCatch(() async {
          final rows = await db.rawQuery(
            '''
            select s.name surah_name, c.*
              from $_aayahContents c
              join suwar s on s.number = c.surah_number
            order by surah_number, aayah_number
            ''',
          );

          return [
            for (final row in rows) SearchResultRow.fromJson(row).toDomain(),
          ];
        }, ExceptionError.new),
      );

  TaskEither<AppError, List<SearchContent>> getBookmarked() =>
      _dbService.db.toTaskEither().flatMap(
        (db) => .tryCatch(() async {
          final rows = await db.rawQuery(
            '''
            select s.name surah_name, c.*
              from $_aayahContents c
              join bookmarks b
                on b.surah_number = c.surah_number
               and b.aayah_number = c.aayah_number
              join suwar s on s.number = c.surah_number
            ''',
          );

          return [
            for (final row in rows) SearchResultRow.fromJson(row).toDomain(),
          ];
        }, ExceptionError.new),
      );

  TaskEither<AppError, void> addContent(Batch batch, SearchContentRow row) =>
      .tryCatch(
        () async => batch.insert(_aayahContents, row.toJson()),
        ExceptionError.new,
      );

  TaskEither<AppError, void> cleanUp() => _dbService.db.toTaskEither().flatMap(
    (db) => .tryCatch(() => db.delete(_aayahContents), ExceptionError.new),
  );
}
