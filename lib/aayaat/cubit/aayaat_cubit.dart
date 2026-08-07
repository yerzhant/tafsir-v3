import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tafsir/aayaat/domain/ayah_position.dart';

part 'aayaat_state.dart';
part 'aayaat_cubit.freezed.dart';

class AayaatCubit extends Cubit<AayaatState> {
  AayaatCubit(AyahPosition position) : super(.read(position));

  void scrollTo(AyahPosition position) => emit(.read(position));
}
