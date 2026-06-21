import 'package:freezed_annotation/freezed_annotation.dart';

part 'surah_item.freezed.dart';

extension type const SurahNumber(int value) implements int {}
extension type const SurahName(String value) implements String {}
extension type const SurahTranslation(String value) implements String {}
extension type const SurahDjuz(String value) implements String {}

extension type const AayahQuantity(int value) implements int {}

enum SurahPlace {
  mekkah('Мекка'),
  madinah('Медина');

  final String name;

  const SurahPlace(this.name);
}

@freezed
abstract class SurahItem with _$SurahItem {
  const factory SurahItem(
    SurahNumber number,
    SurahName name,
    SurahTranslation translation,
    SurahPlace place,
    AayahQuantity quantity,
    SurahDjuz djuz,
  ) = _SurahItem;
}
