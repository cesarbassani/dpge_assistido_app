import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TextStyles {
  static TextStyles? _instance;

  TextStyles._();

  static TextStyles get i {
    _instance ??= TextStyles._();
    return _instance!;
  }

  TextStyle get textLight => GoogleFonts.roboto(
        fontWeight: FontWeight.w300,
      );

  TextStyle get textRegular => GoogleFonts.roboto(
        fontWeight: FontWeight.normal,
      );

  TextStyle get textMedium => GoogleFonts.roboto(
        fontWeight: FontWeight.w500,
      );

  TextStyle get textSemiBold => GoogleFonts.roboto(
        fontWeight: FontWeight.w600,
      );

  TextStyle get textBold => GoogleFonts.roboto(
        fontWeight: FontWeight.bold,
      );

  TextStyle get textExtraBold => GoogleFonts.roboto(
        fontWeight: FontWeight.w800,
      );

  TextStyle get textButtonLabel => textBold.copyWith(fontSize: 14);
}

extension TextStylesExtensions on BuildContext {
  TextStyles get textStyles => TextStyles.i;
}
