import 'package:flutter/material.dart';

enum AppTheme {
  light(.light),
  dark(.dark),
  brownLight(.light),
  brownDark(.dark);

  final Brightness brightness;

  const AppTheme(this.brightness);
}

const brandPrimaryLight = Color(0xFF4AA3E6);
const brandPrimaryDark = Color(0xFF93D0FE);
const brandPrimaryBrownLight = brown300BrownLight;
const brandPrimaryBrownDark = brown300BrownDark;

const brandSecondaryLight = Color(0xFF0088C7);
const brandSecondaryDark = Color(0xFF0088C7);
const brandSecondaryBrownLight = brown200BrownLight;
const brandSecondaryBrownDark = brown400BrownDark;

const brandTertiraryLight = Color(0xFF022B3E);
const brandTertiraryDark = Color(0xFF022B3E);
const brandTertiraryBrownLight = brown100BrownLight;
const brandTertiraryBrownDark = brown500BrownDark;

const brandSoftLight = Color(0xFFDDEFFB);
const brandSoftDark = Color(0xFFDDEFFB);
const brandSoftBrownLight = Color(0xFFFFFCF8);
const brandSoftBrownDark = Color(0xFFFFF9F0);

const brandWhite = Colors.white;

const bgPrimaryLight = Color(0xFFF5F4F7);
const bgPrimaryDark = Color(0xFF064766);
const bgPrimaryBrownLight = Color(0xFFE4D3BC);
const bgPrimaryBrownDark = Color(0xFF715649);

const bgSecondaryLight = Color(0x90FFFFFF);
const bgSecondaryDark = Color(0xFF0C2036);
const bgSecondaryBrownLight = Color(0x7FFFFFFF);
const bgSecondaryBrownDark = Color(0x661A130A);

const bgTertiraryLight = Color(0x33FFFFFF);
const bgTertiraryDark = Color(0xFF1678A6);
const bgTertiraryBrownLight = Color(0xFFFFF9F0);
const bgTertiraryBrownDark = Color(0xFF5C4138);

const bgContainerLight = Color(0xFFFFFFFF);
const bgContainerDark = Color(0xFFFFFFFF);
const bgContainerBrownLight = Color(0xFFFFFFFF);
const bgContainerBrownDark = Color(0xFF5C4138);

const alertSuccess200Light = Color(0xFF59A180);
const alertSuccess200Dark = Color(0xFF59A180);
const alertSuccess200BrownLight = Color(0xFF59A180);
const alertSuccess200BrownDark = Color(0xFF59A180);

const alertInfo200Light = Color(0xFF00B3F4);
const alertInfo200Dark = Color(0xFF00B3F4);
const alertInfo200BrownLight = Color(0xFF00B3F4);
const alertInfo200BrownDark = Color(0xFF00B3F4);

const borderPrimaryLight = grey300Light;
const borderPrimaryDark = grey100Dark;
const borderPrimaryBrownLight = brandPrimaryBrownLight;
const borderPrimaryBrownDark = brandTertiraryBrownDark;

const borderSecondaryLight = grey200Light;
const borderSecondaryDark = grey200Dark;
const borderSecondaryBrownLight = brandSecondaryBrownLight;
const borderSecondaryBrownDark = brandSecondaryBrownDark;

const borderTertiraryLight = grey100Light;
const borderTertiraryDark = grey300Dark;
const borderTertiraryBrownLight = brandTertiraryBrownLight;
const borderTertiraryBrownDark = brandPrimaryBrownDark;

const grey100Light = Color(0xFF8E8E93);
const grey100Dark = Color(0xFFF9F9F9);
const grey100BrownLight = Color(0xFF8E8E93);
const grey100BrownDark = Color(0xFFF9F9F9);

const grey200Light = Color(0xFFC7C7CC);
const grey200Dark = Color(0xFFE2E2E2);
const grey200BrownLight = Color(0xFFC7C7CC);
const grey200BrownDark = Color(0xFFE2E2E2);

const grey300Light = Color(0xFFE2E2E2);
const grey300Dark = Color(0xFFC7C7CC);
const grey300BrownLight = Color(0xFFE2E2E2);
const grey300BrownDark = Color(0xFFC7C7CC);

const grey400Light = Color(0xFFF9F9F9);
const grey400Dark = Color(0xFF8E8E93);
const grey400BrownLight = Color(0xFFF9F9F9);
const grey400BrownDark = Color(0xFF8E8E93);

const brown100Light = Color(0xFFE4D2B9);
const brown100Dark = Color(0xFF2E2417);
const brown100BrownLight = Color(0xFFE4D2B9);
const brown100BrownDark = Color(0xFF2E2417);

const brown200Light = Color(0xFFB99768);
const brown200Dark = Color(0xFF5E503E);
const brown200BrownLight = Color(0xFFB99768);
const brown200BrownDark = Color(0xFF5E503E);

const brown300Light = Color(0xFF8B6E61);
const brown300Dark = Color(0xFF8B6E61);
const brown300BrownLight = Color(0xFF8B6E61);
const brown300BrownDark = Color(0xFF8B6E61);

const brown400Light = Color(0xFF5E503E);
const brown400Dark = Color(0xFFB99768);
const brown400BrownLight = Color(0xFF5E503E);
const brown400BrownDark = Color(0xFFB99768);

const brown500Light = Color(0xFF2E2417);
const brown500Dark = Color(0xFFE4D2B9);
const brown500BrownLight = Color(0xFF2E2417);
const brown500BrownDark = Color(0xFFE4D2B9);

const gradiendPrimaryBlue = LinearGradient(
  colors: [.new(0xFFA5D4F4), .new(0xFF4AA3E6)],
);
const gradiendPrimaryBrown = LinearGradient(
  colors: [.new(0xFFE4D2B9), .new(0xFFAF9684)],
);

const typographyTextWhite = brandWhite;

const typographyPrimaryLight = brandTertiraryLight;
const typographyPrimaryDark = Colors.white;
const typographyPrimaryBrownLight = brown500BrownLight;
const typographyPrimaryBrownDark = brandSoftBrownDark;

const typographySecondaryLight = grey100Light;
const typographySecondaryDark = grey400Dark;
const typographySecondaryBrownLight = brown400BrownLight;
const typographySecondaryBrownDark = Color(0xFFA9897B);

const typographyTertiraryLight = grey200Light;
const typographyTertiraryDark = grey200Dark;
const typographyTertiraryBrownLight = brown300BrownLight;
const typographyTertiraryBrownDark = Color(0xFFF6E9D6);

const typographyLabelsAndIconsLight = typographySecondaryLight;
const typographyLabelsAndIconsDark = typographyTertiraryDark;
const typographyLabelsAndIconsBrownLight = typographySecondaryBrownLight;
const typographyLabelsAndIconsBrownDark = brandSecondaryBrownDark;

const typographyLinkLight = alertInfo200Light;
const typographyLinkDark = alertInfo200Dark;
const typographyLinkBrownLight = alertInfo200BrownLight;
const typographyLinkBrownDark = alertInfo200BrownLight;

const textH1 = TextStyle(fontFamily: 'Roboto', fontSize: 28, fontWeight: .bold);
const textH2 = TextStyle(fontFamily: 'Roboto', fontSize: 24, fontWeight: .w600);

const textHeadline = TextStyle(
  fontFamily: 'Roboto',
  fontSize: 20,
  fontWeight: .w500,
);

const textCallout = TextStyle(
  fontFamily: 'Roboto',
  fontSize: 16,
  fontWeight: .w600,
);

const textBodyLarge = TextStyle(fontFamily: 'Roboto', fontSize: 18);
const textBodyReg = TextStyle(fontFamily: 'Roboto', fontSize: 16);
const textBodyMedium = TextStyle(fontFamily: 'Roboto', fontSize: 14);

Color brandPrimary(AppTheme theme) => switch (theme) {
  .light => brandPrimaryLight,
  .dark => brandPrimaryDark,
  .brownLight => brandPrimaryBrownLight,
  .brownDark => brandPrimaryBrownDark,
};

Color brandSecondary(AppTheme theme) => switch (theme) {
  .light => brandSecondaryLight,
  .dark => brandSecondaryDark,
  .brownLight => brandSecondaryBrownLight,
  .brownDark => brandSecondaryBrownDark,
};

Color bgPrimary(AppTheme theme) => switch (theme) {
  .light => bgPrimaryLight,
  .dark => bgPrimaryDark,
  .brownLight => bgPrimaryBrownLight,
  .brownDark => bgPrimaryBrownDark,
};

Color bgSecondary(AppTheme theme) => switch (theme) {
  .light => bgSecondaryLight,
  .dark => bgSecondaryDark,
  .brownLight => bgSecondaryBrownLight,
  .brownDark => bgSecondaryBrownDark,
};

Color bgTertirary(AppTheme theme) => switch (theme) {
  .light => bgTertiraryLight,
  .dark => bgTertiraryDark,
  .brownLight => bgTertiraryBrownLight,
  .brownDark => bgTertiraryBrownDark,
};

Color bgContainer(AppTheme theme) => switch (theme) {
  .light => bgContainerLight,
  .dark => bgContainerDark,
  .brownLight => bgContainerBrownLight,
  .brownDark => bgContainerBrownDark,
};

Color borderPrimary(AppTheme theme) => switch (theme) {
  .light => borderPrimaryLight,
  .dark => borderPrimaryDark,
  .brownLight => borderPrimaryBrownLight,
  .brownDark => borderPrimaryBrownDark,
};

Color borderTertirary(AppTheme theme) => switch (theme) {
  .light => borderTertiraryLight,
  .dark => borderTertiraryDark,
  .brownLight => borderTertiraryBrownLight,
  .brownDark => borderTertiraryBrownDark,
};

Color typographyPrimary(AppTheme theme) => switch (theme) {
  .light => typographyPrimaryLight,
  .dark => typographyPrimaryDark,
  .brownLight => typographyPrimaryBrownLight,
  .brownDark => typographyPrimaryBrownDark,
};

Color typographySecondary(AppTheme theme) => switch (theme) {
  .light => typographySecondaryLight,
  .dark => typographySecondaryDark,
  .brownLight => typographySecondaryBrownLight,
  .brownDark => typographySecondaryBrownDark,
};

Color typographyTertirary(AppTheme theme) => switch (theme) {
  .light => typographyTertiraryLight,
  .dark => typographyTertiraryDark,
  .brownLight => typographyTertiraryBrownLight,
  .brownDark => typographyTertiraryBrownDark,
};

Color typographyLabelsAndIcons(AppTheme theme) => switch (theme) {
  .light => typographyLabelsAndIconsLight,
  .dark => typographyLabelsAndIconsDark,
  .brownLight => typographyLabelsAndIconsBrownLight,
  .brownDark => typographyLabelsAndIconsBrownDark,
};

Color typographyLink(AppTheme theme) => switch (theme) {
  .light => typographyLinkLight,
  .dark => typographyLinkDark,
  .brownLight => typographyLinkBrownLight,
  .brownDark => typographyLinkBrownDark,
};

Color alertSuccess200(AppTheme theme) => switch (theme) {
  .light => alertSuccess200Light,
  .dark => alertSuccess200Dark,
  .brownLight => alertSuccess200BrownLight,
  .brownDark => alertSuccess200BrownDark,
};

LinearGradient gradientPrimary(AppTheme theme) => switch (theme) {
  .light || .dark => gradiendPrimaryBlue,
  .brownLight || .brownDark => gradiendPrimaryBrown,
};
