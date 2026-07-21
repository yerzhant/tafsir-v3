import 'package:flutter_html/flutter_html.dart';
import 'package:tafsir/common/ui/app_theme.dart';

Map<String, Style> htmlStyles(AppTheme theme) => {
  'body': .fromTextStyle(
    textBodyReg.copyWith(color: typographyPrimary(theme)),
  ),
  'blockquote': .new(margin: .only(left: 0)),
  'div': .new(margin: .only(bottom: 8, top: 8)),
  'ul': .new(padding: .only(left: 12)),
  'ol': .new(padding: .only(left: 16)),
  'h2': .new(
    padding: .all(8),
    backgroundColor: bgPrimary(theme),
  ),
};
