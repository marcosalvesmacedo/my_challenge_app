import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

//ignore: must_be_immutable
class CustomTextFormField extends StatefulWidget {
  final String hintText;
  final TextInputType keyboardType;
  List<TextInputFormatter> inputFormatters;
  final String Function(dynamic value) validator;

  CustomTextFormField({
    required Key key,
    required this.hintText,
    required this.keyboardType,
    required this.inputFormatters,
    required this.validator,
  }) : super(key: key);

  @override
  _CustomTextFormFieldState createState() => _CustomTextFormFieldState();
}

class _CustomTextFormFieldState extends State<CustomTextFormField> {
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator: widget.validator,
      keyboardType: widget.keyboardType,
      inputFormatters: widget.inputFormatters,
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
        hintStyle: const TextStyle(
          color: Color(0xFF027353),
          fontSize: 14,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
