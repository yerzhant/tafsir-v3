import 'package:fpdart/fpdart.dart';
import 'package:sqflite/sqflite.dart';
import 'package:tafsir/common/db/db_service.dart';
import 'package:tafsir/common/domain/error.dart';
import 'package:tafsir/search/db/search_content_row.dart';
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

  TaskEither<AppError, List<SearchContent>> searchFor(SearchPhrase phrase) =>
      _dbService.db.toTaskEither().flatMap(
        (db) => .tryCatch(() async {
          final rows = await db.query(
            _aayahContents,
            where: 'content like ?',
            whereArgs: [phrase],
            orderBy: 'surah_number, aayah_number',
          );

          return [
            for (final row in rows) SearchContentRow.fromJson(row).toDomain(),
          ];
        }, ExceptionError.new),
      );

  TaskEither<AppError, void> addContent(SearchContentRow row) =>
      _dbService.db.toTaskEither().flatMap(
        (db) => .tryCatch(
          () => db.insert(_aayahContents, row.toJson()),
          ExceptionError.new,
        ),
      );

  TaskEither<AppError, void> cleanUp() => _dbService.db.toTaskEither().flatMap(
    (db) => .tryCatch(() => db.delete(_aayahContents), ExceptionError.new),
  );
}
