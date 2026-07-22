import 'package:freezed_annotation/freezed_annotation.dart';

part 'ayah.freezed.dart';

extension type const Arabic(String value) implements String {}
extension type const Tafsir(String value) implements String {}
extension type const Translation(String value) implements String {}

@freezed
abstract class Ayah with _$Ayah {
  const factory Ayah(
    int number,
    Arabic arabic,
    Tafsir tafsir,
    Translation translation,
  ) = _Ayah;
}
