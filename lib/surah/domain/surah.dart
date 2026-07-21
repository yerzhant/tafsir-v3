import 'package:freezed_annotation/freezed_annotation.dart';

part 'surah.freezed.dart';

extension type const SurahInfo(String value) implements String {}

@freezed
abstract class Surah with _$Surah {
  const factory Surah(
    SurahInfo info,
  ) = _Surah;
}
