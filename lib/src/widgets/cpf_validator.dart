import 'package:flutter/material.dart';
import 'package:cpf_cnpj_validator/cpf_validator.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

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
  final TextEditingController _controller = TextEditingController();
  bool _isValid = true;

  final MaskTextInputFormatter _cpfMaskFormatter = MaskTextInputFormatter(
      mask: '###.###.###-##', filter: {"#": RegExp(r'[0-9]')});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: TextField(
        controller: _controller,
        decoration: InputDecoration(
          hintText: 'CPF',
          hintStyle: const TextStyle(color: Color(0xFF667b68)),
          errorText: _isValid ? null : 'CPF inválido',
        ),
        keyboardType: TextInputType.number,
        inputFormatters: [_cpfMaskFormatter],
        onChanged: (value) {
          setState(() {
            _isValid = CPFValidator.isValid(value);
          });
        },
      ),
    );
  }
}
