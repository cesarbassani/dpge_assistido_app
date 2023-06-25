import 'package:dpge_assistido_app/utils/ui/app_text.dart';
import 'package:dpge_assistido_app/utils/ui/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTextFormFieldDefault extends StatefulWidget {
  final String label;
  final String hint;
  final TextEditingController? controller;
  bool? passwordVisible;

  final void Function(String)? onChanged;
  final String? Function(String)? validator;

  AppTextFormFieldDefault({
    Key? key,
    required this.label,
    this.hint = '',
    this.onChanged,
    this.controller,
    this.passwordVisible = false,
    this.validator,
  }) : super(key: key);

  @override
  State<AppTextFormFieldDefault> createState() =>
      _AppTextFormFieldDefaultState();
}

class _AppTextFormFieldDefaultState extends State<AppTextFormFieldDefault> {
  bool _obscureText = false;

  @override
  void initState() {
    if (widget.passwordVisible == true) {
      _obscureText = !_obscureText;
    }
    super.initState();
  }

  void _showPassword() {
    setState(() {
      widget.passwordVisible = !widget.passwordVisible!;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          widget.label,
          style: GoogleFonts.roboto(
            fontSize: 16,
            color: AppTheme.colors.textLabel,
            fontWeight: FontWeight.normal,
          ),
        ).label,
        const SizedBox(
          height: 5,
        ),
        Container(
          // height: 42,
          child: TextFormField(
            keyboardType: TextInputType.emailAddress,
            controller: widget.controller,
            validator: (value) {
              if (widget.validator != null) {
                return widget.validator!(value ?? '');
              }
            },
            onChanged: widget.onChanged,
            obscureText: widget.passwordVisible!,
            style: AppTheme.textStyles.input,
            decoration: InputDecoration(
              contentPadding: EdgeInsets.symmetric(horizontal: 10),
              hintStyle: AppTheme.textStyles.hint,
              hintText: widget.hint,
              suffixIcon: _obscureText
                  ? IconButton(
                      alignment: Alignment.center,
                      icon: Icon(
                        widget.passwordVisible!
                            ? Icons.visibility
                            : Icons.visibility_off,
                        color: AppTheme.colors.textLabelLight,
                      ),
                      onPressed: _showPassword,
                    )
                  : null,
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: const BorderSide(color: Colors.grey),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
