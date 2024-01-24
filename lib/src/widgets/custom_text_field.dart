import 'package:flutter/material.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

//ignore: must_be_immutable
class CustomTextField extends StatefulWidget {
  final String hintText;
  final String errorText;
  final TextInputType keyboardType;
  final MaskTextInputFormatter inputFormatters;
  final void Function(dynamic value) onChanged;
  bool isValid = true;

  CustomTextField({
    required Key key,
    required this.hintText,
    required this.errorText,
    required this.isValid,
    required this.keyboardType,
    required this.inputFormatters,
    required this.onChanged,
  }) : super(key: key);

  @override
  _CustomTextFieldState createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  @override
  Widget build(BuildContext context) {
    return TextField(
      keyboardType: widget.keyboardType,
      inputFormatters: [widget.inputFormatters],
      decoration: InputDecoration(
        enabledBorder: const UnderlineInputBorder(
          borderSide: BorderSide(
            color: Color(0xFF667b68),
          ),
        ),
        focusedBorder: const UnderlineInputBorder(
          borderSide: BorderSide(
            color: Color(0xFF027353),
          ),
        ),
        hintText: widget.hintText,
        errorText: widget.isValid ? null : widget.errorText,
        hintStyle: const TextStyle(
          color: Color(0xFF027353),
          fontSize: 14,
          fontWeight: FontWeight.bold,
        ),
      ),
      onChanged: widget.onChanged,
    );
  }
}
