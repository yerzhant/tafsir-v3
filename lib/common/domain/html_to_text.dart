const _tags = r'<[^>]*?>';
const _aayahNumbers = r'^\d{1,3}\.';

const _quote = ('&quot;', '"');
const _emDash = ('&mdash;', '—');
const _enDash = ('&ndash;', '–');
const _hellip = ('&hellip;', '…');
const _rsQuote = ('&rsquo;', '’');
const _ldQuote = ('&ldquo;', '“');
const _softHyphen = ('&shy;', '');
const _leftArrowQuote = ('&laquo;', '«');
const _nonBrakingSpace = ('&nbsp;', ' ');
const _rightArrowQuote = ('&raquo;', '»');

String htmlToPlainText(String html) => html
    .replaceAll(RegExp(_tags), '')
    .replaceAll(RegExp(_aayahNumbers), '')
    .replaceAll(_quote.$1, _quote.$2)
    .replaceAll(_emDash.$1, _emDash.$2)
    .replaceAll(_enDash.$1, _enDash.$2)
    .replaceAll(_hellip.$1, _hellip.$2)
    .replaceAll(_rsQuote.$1, _rsQuote.$2)
    .replaceAll(_ldQuote.$1, _ldQuote.$2)
    .replaceAll(_softHyphen.$1, _softHyphen.$2)
    .replaceAll(_leftArrowQuote.$1, _leftArrowQuote.$2)
    .replaceAll(_nonBrakingSpace.$1, _nonBrakingSpace.$2)
    .replaceAll(_rightArrowQuote.$1, _rightArrowQuote.$2)
    .trim();
