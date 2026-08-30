import 'package:flutter_test/flutter_test.dart';
import 'package:tafsir/search/domain/index_of_space.dart';
import 'package:tafsir/search/domain/search_content.dart';

void main() {
  test('prefix', () {
    const min = 3, max = 6;

    expect(const AayahContent('012').indexOfPrefix(0, min, max), 0);
    expect(const AayahContent('012').indexOfPrefix(1, min, max), 0);
    expect(const AayahContent('012').indexOfPrefix(2, min, max), 0);
    expect(const AayahContent('01 345').indexOfPrefix(3, min, max), 0);
    expect(const AayahContent('0 23 567').indexOfPrefix(5, min, max), 2);
    expect(const AayahContent('01234567890').indexOfPrefix(9, min, max), 3);
    expect(const AayahContent('01234567 90').indexOfPrefix(9, min, max), 9);
  });

  test('suffix', () {
    const min = 3, max = 6;

    expect(const AayahContent('012').indexOfSuffix(3, min, max), 3);
    expect(const AayahContent('01234').indexOfSuffix(3, min, max), 5);
    expect(const AayahContent('012345').indexOfSuffix(3, min, max), 6);
    expect(const AayahContent('0123456 8').indexOfSuffix(3, min, max), 7);
    expect(const AayahContent('01234567890').indexOfSuffix(3, min, max), 9);
  });
}
