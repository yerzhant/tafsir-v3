import 'package:bloc/bloc.dart';
import 'package:fpdart/fpdart.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tafsir/common/domain/error.dart';

part 'init_state.dart';
part 'init_cubit.freezed.dart';

class InitCubit extends Cubit<InitState> {
  InitCubit() : super(const .initializing(0));

  Future<void> init() => TaskEither<AppError, void>.Do(
    ($) async {},
  ).mapLeft((l) => emit(.failure(l))).run();
}
