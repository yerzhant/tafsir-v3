import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tafsir/surah/domain/surah.dart';

part 'djuz.freezed.dart';

extension type const DjuzNumber(int value) implements int {}

enum DjuzPlace {
  mekkah('Мекка'),
  madinah('Медина');

  final String name;

  const DjuzPlace(this.name);
}

@freezed
abstract class Djuz with _$Djuz {
  const factory Djuz(
    DjuzNumber number,
    DjuzPlace place,
    SurahName from,
    SurahName to,
  ) = _Djuz;
}
