extension type const SurahNumber(String value) implements String {}
extension type const SurahName(String value) implements String {}
extension type const SurahTranslation(String value) implements String {}
extension type const AayahQuantity(int value) implements int {}
extension type const Djuz(String value) implements String {}

enum SurahPlace {
  mekkah('Мекка'),
  madinah('Медина');

  final String name;

  const SurahPlace(this.name);
}
