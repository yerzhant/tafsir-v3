import 'package:freezed_annotation/freezed_annotation.dart';

part 'surah.freezed.dart';

extension type const SurahNumber(int value) implements int {}
extension type const SurahInfo(String value) implements String {}
extension type const SurahName(String value) implements String {}
extension type const SurahTranslation(String value) implements String {}

@freezed
abstract class Surah with _$Surah {
  const factory Surah(
    SurahNumber number,
    SurahName name,
    SurahInfo info,
    SurahTranslation translation,
  ) = _Surah;
}
