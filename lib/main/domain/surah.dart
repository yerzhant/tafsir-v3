import 'package:freezed_annotation/freezed_annotation.dart';

part 'surah.freezed.dart';

extension type const SurahNumber(int value) implements int {}
extension type const SurahName(String value) implements String {}
extension type const SurahInfo(String value) implements String {}
extension type const SurahDjuz(String value) implements String {}
extension type const SurahTranslation(String value) implements String {}

extension type const AayahQuantity(int value) implements int {}

enum SurahPlace {
  makkah('Мекка'),
  madinah('Медина');

  final String name;

  const SurahPlace(this.name);

  static SurahPlace? parse(String name) => switch (name) {
    'Makkah' => .makkah,
    'Madina' => .madinah,
    '' => null,
    _ => throw 'Invalid surah place $name',
  };
}

@freezed
abstract class Surah with _$Surah {
  const factory Surah(
    SurahNumber number,
    SurahName name,
    SurahInfo info,
    SurahDjuz djuz,
    SurahPlace? place,
    SurahTranslation? translation,

    AayahQuantity quantity,
  ) = _Surah;
}
