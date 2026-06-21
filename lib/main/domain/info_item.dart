import 'package:freezed_annotation/freezed_annotation.dart';

part 'info_item.freezed.dart';

enum InfoItemType { book, azanRu, basmalah }

extension type const InfoName(String value) implements String {}

@freezed
abstract class InfoItem with _$InfoItem {
  const factory InfoItem(InfoItemType type, InfoName name) = _InfoItem;
}
