import 'package:dpge_assistido_app/utils/ui/extensions/theme_extension.dart';
import 'package:flutter/material.dart';

class AppButtonDefault extends StatelessWidget {
  final String label;
  final VoidCallback? onPressed;
  final Color? color;
  final Color? labelColor;
  final bool isEnabled;

  const AppButtonDefault({
    Key? key,
    required this.label,
    required this.onPressed,
    this.color,
    this.labelColor,
    this.isEnabled = true,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      width: double.maxFinite,
      child: ElevatedButton(
        onPressed: isEnabled ? onPressed : null,
        style: ElevatedButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8.0),
          ),
          backgroundColor: color ?? context.primaryColor,
        ),
        child: Text(
          label,
          style: TextStyle(
            fontSize: 16,
            color: labelColor ?? Colors.white,
          ),
        ),
      ),
    );
  }
}
