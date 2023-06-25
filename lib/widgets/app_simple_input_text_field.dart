import 'package:dpge_assistido_app/utils/ui/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_masked_text2/flutter_masked_text2.dart';
import 'package:google_fonts/google_fonts.dart';

class AppSimpleInputTextField extends StatefulWidget {
  final String type;

  AppSimpleInputTextField({
    Key? key,
    this.type = 'text',
  }) : super(key: key);

  @override
  State<AppSimpleInputTextField> createState() =>
      _AppSimpleInputTextFieldState();
}

class _AppSimpleInputTextFieldState extends State<AppSimpleInputTextField> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TextFormField(
          keyboardType: widget.type == 'text'
              ? TextInputType.text
              : TextInputType.multiline,
          maxLines: widget.type != 'text' ? 20 : 1,
          validator: (value) {},
          style: AppTheme.textStyles.input,
          decoration: InputDecoration(
            filled: true,
            fillColor: Colors.white,
            contentPadding: EdgeInsets.all(10),
            hintStyle: AppTheme.textStyles.hint,
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide:
                  const BorderSide(width: 1.0, color: Color(0xFFDCDCE9)),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide:
                  const BorderSide(width: 1.0, color: Color(0xFFDCDCE9)),
            ),
          ),
        ),
      ],
    );
  }
}
