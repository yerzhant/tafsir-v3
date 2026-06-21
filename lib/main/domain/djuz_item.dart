import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tafsir/main/domain/surah_item.dart';

part 'djuz_item.freezed.dart';

extension type const DjuzNumber(int value) implements int {}

enum DjuzPlace {
  mekkah('Мекка'),
  madinah('Медина');

  final String name;

  const DjuzPlace(this.name);
}

@freezed
abstract class DjuzItem with _$DjuzItem {
  const factory DjuzItem(
    DjuzNumber number,
    SurahName from,
    SurahName to,
    DjuzPlace place,
  ) = _DjuzItem;
}
