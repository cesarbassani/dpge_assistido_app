import 'package:flutter/material.dart';

abstract class IAppColors {
  Color get primary;
  Color get accent;
  Color get buttonDisabled;
  Color get textDisabled;
  Color get textEnabled;
  Color get inputNormal;
  Color get background;
  Color get iconInactive;
  Color get textColor;
  Color get buttonCancelColor;
  Color get border;
  Color get backButton;
}

class AppColors implements IAppColors {
  @override
  Color get background => const Color(0xFFF7F7F7);

  @override
  Color get buttonCancelColor => const Color(0xFFE45851);

  @override
  Color get buttonDisabled => const Color(0xFFC6C5C4);

  @override
  Color get iconInactive => const Color(0xFF8C8C8C);

  @override
  Color get inputNormal => const Color(0xFF949B9C);

  @override
  Color get primary => const Color(0xFF4fad70);

  @override
  Color get accent => const Color(0xFF569E6C);

  @override
  Color get textColor => const Color(0xFF272727);

  @override
  Color get textLabel => const Color(0xFF6F6F6F);

  @override
  Color get textLabelLight => const Color(0xFFC6C5C4);

  @override
  Color get textH1Color => const Color(0xFF5F5F5F);

  @override
  Color get textDisabled => const Color(0xFFD9D9D9);

  @override
  Color get textEnabled => const Color(0xFFFFFFFF);

  @override
  Color get border => const Color(0xFFDCDCE9);

  @override
  Color get backButton => const Color(0xFF000000);
}
