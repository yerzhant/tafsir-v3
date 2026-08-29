import 'package:bloc/bloc.dart';
import 'package:csv/csv.dart';
import 'package:flutter/services.dart';
import 'package:fpdart/fpdart.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tafsir/aayaat/db/aayaat_db.dart';
import 'package:tafsir/aayaat/db/aayah_row.dart';
import 'package:tafsir/common/db/db_service.dart';
import 'package:tafsir/common/domain/error.dart';
import 'package:tafsir/common/domain/html_to_text.dart';
import 'package:tafsir/init/db/init_db.dart';
import 'package:tafsir/main/db/djuz_row.dart';
import 'package:tafsir/main/db/main_db.dart';
import 'package:tafsir/main/db/muqaddimah_row.dart';
import 'package:tafsir/main/db/surah_row.dart';
import 'package:tafsir/settings/cubit/settings_cubit.dart';
import 'package:tafsir/theme/cubit/theme_cubit.dart';

part 'init_cubit.freezed.dart';
part 'init_state.dart';

class InitCubit extends Cubit<InitState> {
  InitCubit(
    this._dbService,
    this._initDb,
    this._mainDb,
    this._aayaatDb,
    this._themeCubit,
    this._settingsCubit,
  ) : super(const .initializing(null));

  final DbService _dbService;

  final InitDb _initDb;
  final MainDb _mainDb;
  final AayaatDb _aayaatDb;

  final ThemeCubit _themeCubit;
  final SettingsCubit _settingsCubit;

  late final List<MuqaddimahRow> _muqaddimat;
  late final List<AayahRow> _aayaah;
  late final List<SurahRow> _suwar;
  late final List<DjuzRow> _adjzaa;

  late final int _total;

  var _dbClosed = true;
  var _processed = 0;

  Future<void> init() => TaskEither<AppError, void>.Do(
    ($) async {
      emit(const .initializing(null));

      if (_dbClosed) {
        await $(_dbService.open());
        _dbClosed = false;
      }

      await _themeCubit.init();
      await _settingsCubit.inin();

      if (await $(_initDb.initialized())) {
        emit(const .initialized());
        return;
      }

      await $(_aayaatDb.cleanUp());
      await $(_mainDb.cleanUp());

      await $(_parseFiles());

      _total =
          _muqaddimat.length + _suwar.length + _aayaah.length + _adjzaa.length;

      emit(const .initializing(0));

      for (var row in _muqaddimat) {
        await $(_mainDb.addMuqaddimah(row));
        _progress();
      }

      for (var row in _suwar) {
        await $(_mainDb.addSurah(row));
        _progress();
      }

      for (var row in _adjzaa) {
        await $(_mainDb.addDjuz(row));
        _progress();
      }

      for (var row in _aayaah) {
        await $(_aayaatDb.addAayah(row));
        _progress();
      }

      await $(_initDb.setInitialized());

      emit(const .initialized());
    },
  ).mapLeft((l) => emit(.failure(l))).run();

  void _progress() {
    _processed++;
    emit(.initializing(_processed / _total * 100.0));
  }

  TaskEither<AppError, void> _parseFiles() => .Do(($) async {
    _muqaddimat = await $(
      _parseFile(
        'muqaddimat',
        (e) => MuqaddimahRow(
          .new(int.parse(e[0])),
          .parse(int.parse(e[0])),
          .new(e[1]),
          .new(e[2]),
        ),
      ),
    );

    _suwar = await $(
      _parseFile(
        'suwar',
        (e) => SurahRow(
          .new(int.parse(e[0])),
          .new(e[1]),
          .new(e[2]),
          .new(e[5]),
          .parse(e[4]),
          e[3] != '' ? .new(e[3]) : null,
          .new(int.parse(e[6])),
        ),
      ),
    );

    _adjzaa = await $(
      _parseFile(
        'adjzaa',
        (e) => DjuzRow(
          .new(int.parse(e[0])),
          .parse(e[5]),
          .new(int.parse(e[1])),
          .new(int.parse(e[2])),
          .new(int.parse(e[3])),
          .new(int.parse(e[4])),
        ),
      ),
    );

    _aayaah = await $(
      _parseFile(
        'aayaat',
        (e) => AayahRow(
          .new(int.parse(e[1])),
          .new(int.parse(e[0])),
          .new(e[2].trim()),
          .new(e[4]),
          .new(htmlToPlainText(e[3])),
        ),
      ),
    );
  });

  TaskEither<AppError, List<T>> _parseFile<T>(
    String file,
    T Function(List<dynamic>) map,
  ) => .tryCatch(() async {
    final csv = await rootBundle.loadString(
      'assets/quran/$file.csv',
      cache: false,
    );

    return Csv(autoDetect: false).decode(csv).skip(1).map(map).toList();
  }, ExceptionError.new);
}
