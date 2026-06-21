import 'package:freezed_annotation/freezed_annotation.dart';

part 'aayah.freezed.dart';

extension type const AayahNumber(int value) implements int {}
extension type const AayahArabic(String value) implements String {}
extension type const AayahTranslation(String value) implements String {}
extension type const AayahTafsir(String value) implements String {}

@freezed
abstract class Aayah with _$Aayah {
  const factory Aayah(
    AayahNumber number,
    AayahArabic arabic,
    AayahTranslation translation,
    AayahTafsir tafsir,
  ) = _Aayah;
}
