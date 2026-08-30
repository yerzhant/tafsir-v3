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
    expect(const AayahContent('01234567890').indexOfPrefix(5, min, max), 0);
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

  test('error prefixes', () {
    const min = 5, max = 10;

    expect(
      const AayahContent(
        '«Аль-Хакка» — это одно из имен Судного дня.',
      ).indexOfPrefix(7, min, max),
      0,
    );
    expect(const AayahContent(t1).indexOfPrefix(44, min, max), 39);
  });

  test('error suffixes', () {
    const min = 10, max = 30;

    expect(
      const AayahContent(
        '«Аль-Хакка» — это одно из имен Судного дня. Он назван так, потому что в этот день обязательно сбудется все, что Аллах обещал: как хорошее, так и плохое[1].         По другой версии, Судный день назван так, потому что это событие, которое обязательно, без всякого сомнения, произойдет[2].         Затем Всевышний рассказывает о том, что случилось с предыдущими общинами, которые не верили в Судный день.                      [1] Ибн Касир, Каир, 4/494.        [2] «Мухтасар тафсир аль-Хазин», 3/512. Откуда ты мог знать, что такое Неотвратимое? وما ادراك ما الحاقة',
      ).indexOfSuffix(9, min, max),
      38,
    );
    expect(const AayahContent(t1).indexOfSuffix(45, min, max), 72);
  });
}

const t1 = '''
Слово «مالك» происходит от корня «ملك» – «владеть», и «Малик» – это тот, кто обладает чем-то безраздельно, имея право и власть распоряжаться этим как ему угодно[1].         Власть в Судный день будет принадлежать одному только Всевышнему Аллаху. Разумеется, она и в земной жизни принадлежит лишь Ему одному, однако не все люди это понимают. Не все из них верят в Аллаха и Судный день. Господь говорит:             وما يستوي الاعمى والبصير والذين امنوا وعملوا الصالحات ولا المسيء قليلا ما تتذكرون    ان الساعة لاتية لا ريب فيها ولكن اكثر الناس لا يؤمنون         «Не равны слепой �
''';
