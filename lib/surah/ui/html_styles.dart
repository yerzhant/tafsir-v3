import 'package:flutter_html/flutter_html.dart';
import 'package:tafsir/common/ui/app_theme.dart';

const _padding = 8.0;

Map<String, Style> htmlStyles(AppTheme theme) => {
  'body': .fromTextStyle(
    textBodyReg.copyWith(color: typographyPrimary(theme)),
  ),
  'blockquote': .new(
    margin: .all(0),
    padding: .only(left: 12, bottom: 0),
    border: .new(
      left: .new(
        color: borderPrimary(theme),
        width: 2,
      ),
    ),
  ),
  'div': .new(padding: .only(bottom: _padding, top: _padding)),
  'blockquote div': .new(padding: .all(0)),
  'ul': .new(padding: .only(left: 6)),
  'ol': .new(padding: .only(left: 14)),
  'h2': .new(
    padding: .all(8),
    backgroundColor: bgPrimary(theme),
  ),
};
