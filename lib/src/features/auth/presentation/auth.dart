import 'package:flutter/material.dart';

import 'package:my_challenge_app/src/utils/app_routes.dart';

import '../../../widgets/cpf_validator.dart';
import '../../../widgets/password_input.dart';

class Auth extends StatefulWidget {
  const Auth({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<Auth> createState() => _AuthState();
}

class _AuthState extends State<Auth> {
  bool _passwordIsValid = true;
  bool _cpfIsValid = true;
  bool _isButtonClicked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: MediaQuery.of(context).size.height,
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [Color(0xFFCDDC3B), Color(0xFFCDDC3B)],
                ),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    'BEM-VINDO AO MEU ALELO =)',
                    style: TextStyle(
                      color: Color(0xFF027353),
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 50),
                  CpfInput(
                    decoration: const InputDecoration(
                      hintText: 'CPF',
                      hintStyle: TextStyle(color: Colors.white),
                    ),
                    style: const TextStyle(color: Colors.white),
                    onChanged: (value) {
                      setState(() {
                        if (_isButtonClicked) {
                          _cpfIsValid = value.length ==
                              14; // Adicione sua lógica de validação de CPF aqui, se necessário
                        }
                      });
                    },
                  ),
                  const SizedBox(height: 10),
                  PasswordInput(
                    onChanged: (value) {
                      setState(() {
                        if (_isButtonClicked) {
                          _passwordIsValid = value.length >= 6;
                        }
                      });
                    },
                    errorText: _passwordIsValid ? null : 'Senha inválida',
                  ),
                  const SizedBox(height: 20),
                  ElevatedButton(
                    onPressed: () {
                      setState(() {
                        _isButtonClicked = true;
                      });

                      if (_cpfIsValid && _passwordIsValid) {
                        // Lógica de autenticação
                      } else {
                        // Trate CPF ou senha inválidos conforme necessário
                      }
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xFF027353),
                      shape: const RoundedRectangleBorder(),
                      padding: const EdgeInsets.symmetric(
                          horizontal: 140.0, vertical: 18.0),
                    ),
                    child: const Text(
                      'ENTRAR',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                  const SizedBox(height: 10),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).pushNamed(AppRoutes.rememberMe);
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xFF027353),
                      shape: const RoundedRectangleBorder(),
                      padding: const EdgeInsets.symmetric(
                          horizontal: 100.0, vertical: 18.0),
                    ),
                    child: const Text(
                      'Esqueci minha senha',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
