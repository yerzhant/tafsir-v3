import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tafsir/aayaat/domain/aayah.dart';
import 'package:tafsir/main/domain/surah.dart';

part 'found_item.freezed.dart';

extension type const FoundText(String value) implements String {}

@freezed
abstract class FoundItem with _$FoundItem {
  const factory FoundItem({
    required Surah surah,
    required AayahNumber aayahNumber,

    required FoundText text,
    required FoundText prefix,
    required FoundText suffix,
  }) = _FoundItem;
}
