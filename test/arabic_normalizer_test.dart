import 'package:flutter_test/flutter_test.dart';
import 'package:tafsir/common/domain/arabic_normalizer.dart';

void main() {
  test('tashkeel', () {
    final actual = normalizeArabic(
      'ذَهَبَ الرَّجُلُ إِلَى المَدِينَةِ صَبَاحًا',
    );
    expect(actual, 'ذهب الرجل إلى المدينة صباحا');
  });

  test('output', () {
    final tests = [
      'قُلْ هُوَ اللَّهُ أَحَدٌ',
      'أُولَٰئِكَ هُمُ الْمُؤْمِنُونَ حَقًّا ۚ لَهُمْ دَرَجَاتٌ عِنْدَ رَبِّهِمْ وَمَغْفِرَةٌ وَرِزْقٌ كَرِيمٌ',
      'ذَٰلِكَ الْكِتَابُ لَا رَيْبَ ۛ فِيهِ ۛ هُدًى لِلْمُتَّقِينَ',
      'فَأَنزَلَ اللَّـهُ سَكِينَتَهُ عَلَىٰ رَسُولِهِ وَعَلَى الْمُؤْمِنِينَ وَأَلْزَمَهُمْ كَلِمَةَ التَّقْوَىٰ',
    ];

    for (var test in tests) {
      // ignore: avoid_print
      print(normalizeArabic(test));
    }
  });
}
