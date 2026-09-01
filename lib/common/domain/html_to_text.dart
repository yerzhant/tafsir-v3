const _tags = r'<[^>]*?>';

const _aayahNumbers = r'^\d{1,3}\.';

const _h39 = ('&#39;', "'");

const _quote = ('&quot;', '"');

const _lessThan = ('&lt;', '<');
const _greaterThan = ('&gt;', '>');

const _enDash = ('&ndash;', '\u2013');
const _emDash = ('&mdash;', '\u2014');

const _hellip = ('&hellip;', '…');

const _rsQuote = ('&rsquo;', '\u2019'); // ’
const _lsQuote = ('&lsquo;', '\u2018'); // ‘

const _rdQuote = ('&rdquo;', '”');
const _ldQuote = ('&ldquo;', '“');

const _softHyphen = ('&shy;', '\u00ad');

const _leftArrowQuote = ('&laquo;', '«');
const _rightArrowQuote = ('&raquo;', '»');

const _nonBrakingSpace = ('&nbsp;', '\u00a0');

const _rlm = ('&rlm;', '\u200f');
const _zwnj = ('&zwnj;', '\u200c');

String htmlToPlainText(String html) => html
    .replaceAll(RegExp(_tags), '')
    .replaceAll(RegExp(_aayahNumbers), '')
    .replaceAll(_h39.$1, _h39.$2)
    .replaceAll(_rlm.$1, _rlm.$2)
    .replaceAll(_zwnj.$1, _zwnj.$2)
    .replaceAll(_quote.$1, _quote.$2)
    .replaceAll(_enDash.$1, _enDash.$2)
    .replaceAll(_emDash.$1, _emDash.$2)
    .replaceAll(_hellip.$1, _hellip.$2)
    .replaceAll(_rsQuote.$1, _rsQuote.$2)
    .replaceAll(_lsQuote.$1, _lsQuote.$2)
    .replaceAll(_rdQuote.$1, _rdQuote.$2)
    .replaceAll(_ldQuote.$1, _ldQuote.$2)
    .replaceAll(_lessThan.$1, _lessThan.$2)
    .replaceAll(_softHyphen.$1, _softHyphen.$2)
    .replaceAll(_greaterThan.$1, _greaterThan.$2)
    .replaceAll(_leftArrowQuote.$1, _leftArrowQuote.$2)
    .replaceAll(_nonBrakingSpace.$1, _nonBrakingSpace.$2)
    .replaceAll(_rightArrowQuote.$1, _rightArrowQuote.$2)
    .trim();
