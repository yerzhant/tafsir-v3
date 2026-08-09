import 'package:flutter_html/flutter_html.dart';
import 'package:tafsir/common/ui/app_theme.dart';

const _padding = 8.0;

Map<String, Style> htmlStyles(AppTheme theme) => {
  'body': .fromTextStyle(
    textBodyReg.copyWith(color: typographyPrimary(theme)),
  ),
  '*': .new(padding: .all(0), margin: .all(0)),
  'div, p': .new(margin: .only(bottom: _padding)),
  'ul': .new(
    margin: .only(
      left: 12,
      top: _padding,
      bottom: _padding,
    ),
  ),
  'ol': .new(
    margin: .only(
      left: 18,
      top: _padding,
      bottom: _padding,
    ),
  ),
  'h2, h3': .new(
    margin: .symmetric(vertical: _padding),
    padding: .all(_padding),
    backgroundColor: bgPrimary(theme),
  ),
  'blockquote': .new(
    padding: .only(left: 12),
    border: .new(
      left: .new(
        color: borderPrimary(theme),
        width: 2,
      ),
    ),
  ),
};
