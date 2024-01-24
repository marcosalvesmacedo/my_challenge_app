import 'package:flutter/material.dart';
import 'package:cpf_cnpj_validator/cpf_validator.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';
import 'package:my_challenge_app/src/constants/masks.dart';

class CpfInput extends StatefulWidget {
  const CpfInput({
    Key? key,
    required InputDecoration decoration,
    required TextStyle style,
    required Null Function(dynamic value) onChanged,
  }) : super(key: key);

  @override
  _CpfInputState createState() => _CpfInputState();

  static of(BuildContext context) {}
}

class _CpfInputState extends State<CpfInput> {
  bool _isValid = true;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: TextField(
        decoration: InputDecoration(
          hintText: 'CPF',
          hintStyle: const TextStyle(color: Color(0xFF667b68)),
          errorText: _isValid ? null : 'CPF inválido',
        ),
        keyboardType: TextInputType.number,
        inputFormatters: [Masks.cpfMaskFormatter],
        onChanged: (value) {
          setState(() {
            _isValid = CPFValidator.isValid(value);
          });
        },
      ),
    );
  }
}
