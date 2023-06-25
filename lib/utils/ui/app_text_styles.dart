import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'app_theme.dart';

abstract class IAppTextStyles {
  TextStyle get label;
  TextStyle get input;
  TextStyle get hint;
  TextStyle get title;
  TextStyle get buttonBackgroundColor;
  TextStyle get buttonBoldTextColor;
  TextStyle get buttonTextColor;
  TextStyle get buttonTextDisable;
}

class AppTextStyles implements IAppTextStyles {
  @override
  TextStyle get buttonBackgroundColor => GoogleFonts.roboto(
        fontSize: 14,
        color: AppTheme.colors.background,
        fontWeight: FontWeight.bold,
      );

  @override
  TextStyle get buttonBoldTextColor => GoogleFonts.roboto(
        fontSize: 14,
        color: AppTheme.colors.textColor,
        fontWeight: FontWeight.bold,
      );

  @override
  TextStyle get buttonTextColor => GoogleFonts.roboto(
        fontSize: 14,
        color: AppTheme.colors.textColor,
        fontWeight: FontWeight.normal,
      );

  @override
  TextStyle get buttonTextDisable => GoogleFonts.roboto(
        fontSize: 14,
        color: AppTheme.colors.textEnabled,
        fontWeight: FontWeight.bold,
      );

  @override
  TextStyle get hint => GoogleFonts.roboto(
        fontSize: 14,
        color: AppTheme.colors.inputNormal,
        fontWeight: FontWeight.normal,
      );

  @override
  TextStyle get input => GoogleFonts.roboto(
        fontSize: 16,
        color: AppTheme.colors.inputNormal,
        fontWeight: FontWeight.normal,
      );

  @override
  TextStyle get label => GoogleFonts.roboto(
        fontSize: 16,
        color: AppTheme.colors.textLabel,
        fontWeight: FontWeight.normal,
      );

  @override
  TextStyle get title => GoogleFonts.roboto(
        fontSize: 16,
        color: AppTheme.colors.backButton,
        fontWeight: FontWeight.w700,
      );

  TextStyle get subtitle => GoogleFonts.roboto(
        fontSize: 14,
        color: AppTheme.colors.backButton,
        fontWeight: FontWeight.normal,
      );
}
