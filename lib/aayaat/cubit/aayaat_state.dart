part of 'aayaat_cubit.dart';

@freezed
abstract class AayaatState with _$AayaatState {
  const factory AayaatState.read(AyahPosition position) = _Read;
}
