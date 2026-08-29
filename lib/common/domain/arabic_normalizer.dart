String normalizeArabic(String text) => text
    .replaceAll(
      RegExp(
        r'[\u064B\u064C\u064D\u064E\u064F\u0650\u0651\u0652\u0670\u06D6\u06D7\u06D8\u06D9\u06DA\u06DB\u06DC]',
      ),
      '',
    )
    .replaceAll(RegExp(r'[\u0622\u0623\u0625\u0671]'), '\u0627');
