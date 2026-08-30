import 'package:tafsir/common/domain/scope_functions.dart';
import 'package:tafsir/search/domain/search_content.dart';

extension AayahContentExt on AayahContent {
  int indexOfPrefix(int start, int min, int max) {
    if (start <= min) return 0;

    final border = (start - max).let((it) => it < 0 ? 0 : it);

    final index = substring(border, start).indexOf(' ');

    if (index == -1) return border;

    return border + index + 1;
  }

  int indexOfSuffix(int end, int min, int max) {
    if (end + min >= length) return length;

    final border = (end + max).let((it) => it < length ? it : length);

    final index = substring(end, border).lastIndexOf(' ');

    if (index == -1) return border;

    return index + end;
  }
}
