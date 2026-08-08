import 'package:bloc/bloc.dart';
import 'package:fpdart/fpdart.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tafsir/common/db/db_service.dart';
import 'package:tafsir/common/domain/error.dart';
import 'package:tafsir/init/db/init_db.dart';

part 'init_state.dart';
part 'init_cubit.freezed.dart';

class InitCubit extends Cubit<InitState> {
  InitCubit(this._dbService, this._initDb) : super(const .initializing(0));

  final DbService _dbService;
  final InitDb _initDb;

  var _dbClosed = true;

  Future<void> init() => TaskEither<AppError, void>.Do(
    ($) async {
      emit(const .initializing(0));
      // emit(.failure(.general('message')));

      if (_dbClosed) {
        await $(_dbService.open());
        _dbClosed = false;
      }
    },
  ).mapLeft((l) => emit(.failure(l))).run();
}
