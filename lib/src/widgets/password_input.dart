import 'package:flutter/material.dart';

class PasswordInput extends StatefulWidget {
  const PasswordInput({
    Key? key,
    required this.onChanged,
    required this.errorText,
  }) : super(key: key);

  final ValueChanged<String> onChanged;
  final String? errorText;

  @override
  PasswordInputState createState() => PasswordInputState();
}

class PasswordInputState extends State<PasswordInput> {
  bool _passwordIsValid = true;
  final TextEditingController _controller = TextEditingController();
  bool _isObscured = true;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: TextField(
        controller: _controller,
        decoration: InputDecoration(
          hintText: 'Senha (não é a senha do cartão)',
          hintStyle: const TextStyle(color: Color(0xFF027353),
          fontWeight: FontWeight.bold),
          hintStyle: const TextStyle(color: Colors.white),
          errorText: widget.errorText,
          suffixIcon: IconButton(
            icon: Icon(
              _isObscured ? Icons.visibility : Icons.visibility_off,
              color: Colors.white,
            ),
            onPressed: () {
              setState(() {
                _isObscured = !_isObscured;
              });
            },
          ),
        ),
        obscureText: _isObscured,
        onChanged: (value) {
          widget.onChanged(value);

          setState(() {
            _passwordIsValid = value.length >= 6;
          });
        },
      ),
    );
  }
}
