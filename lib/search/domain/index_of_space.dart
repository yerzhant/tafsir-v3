import 'package:tafsir/search/domain/search_content.dart';

extension AayahContentExt on AayahContent {
  int indexOfPrefix(int start, int min, int max) {
    if (start <= min) return 0;

    final index = indexOf(' ');

    if (index == -1) return start - max;

    return index + 1;
  }

  int indexOfSuffix(int end, int min, int max) {
    if (end + min >= length) return length;

    final index = substring(end).lastIndexOf(' ');

    if (index == -1) return end + max;

    return index + end;
  }
}
