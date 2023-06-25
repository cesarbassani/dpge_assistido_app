import 'package:dpge_assistido_app/utils/ui/app_colors.dart';
import 'package:dpge_assistido_app/utils/ui/app_text_styles.dart';

class AppTheme {
  static final AppTheme instance = AppTheme();

  final _colors = AppColors();
  static AppColors get colors => instance._colors;

  final _textStyles = AppTextStyles();
  static AppTextStyles get textStyles => instance._textStyles;
}
