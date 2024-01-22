import 'package:flutter/material.dart';
import 'package:my_challenge_app/src/constants/constants.dart';

import 'package:my_challenge_app/src/utils/app_routes.dart';

import '../../../widgets/cpf_validator.dart';
import '../../../widgets/password_input.dart';

class Auth extends StatefulWidget {
  const Auth({Key? key}) : super(key: key);

  @override
  State<Auth> createState() => _AuthState();
}

class _AuthState extends State<Auth> {
  bool _passwordIsValid = true;
  bool _cpfIsValid = true;
  final bool _isButtonClicked = false; // Removido 'final'

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              padding: const EdgeInsets.symmetric(
                horizontal: 20,
              ),
              color: const Color(0xFFCDDC3B),
              child: Column(
                children: [
                  FittedBox(
                    child: SizedBox(
                      width: 150,
                      height: 150,
                      child: Image.asset('assets/images/challenge_logo.png'),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const Text(
                    'BEM-VINDO AO',
                    style: TextStyle(
                      color: Color(0xFF027353),
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const Text(
                    'CHALLENGE =)',
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
                      hintStyle: TextStyle(
                        color: Color(0xFF667b68),
                      ),
                    ),
                    style: const TextStyle(color: Colors.white),
                    onChanged: (value) {
                      setState(() {
                        if (_isButtonClicked) {
                          _cpfIsValid = value.length == 14;
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
                  const SizedBox(height: 40),
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xFF027353),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(
                                8.0)), // Adicionado 'BorderRadius'
                        padding: const EdgeInsets.symmetric(
                          horizontal: 6.0,
                          vertical: 18.0,
                        ),
                      ),
                      child: const Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'ENTRAR',
                            style: TextStyle(color: Colors.white),
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(height: 25),
                ],
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              padding: const EdgeInsets.symmetric(
                horizontal: 40,
                vertical: 20,
              ),
              color: const Color(0xFFFFFFFF),
              child: Container(
                width: MediaQuery.of(context).size.width,
                padding: const EdgeInsets.symmetric(
                  horizontal: 40,
                  vertical: 40,
                ),
                color: const Color(0xFFFFFFFF),
                child: Column(
                  children: [
                    SizedBox(
                      width: double.infinity,
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.of(context).pushNamed(AppRoutes.rememberMe);
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: const Color(0xFF027353),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                          padding: const EdgeInsets.symmetric(
                            horizontal: 5.0,
                            vertical: 20.0,
                          ),
                        ),
                        child: const Text(
                          'Esqueci minha senha',
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ),
                    const SizedBox(height: 30),
                    SizedBox(
                      width: double.infinity,
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.of(context).pushNamed(AppRoutes.register);
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: const Color(0xFF027353),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                          padding: const EdgeInsets.symmetric(
                            horizontal: 5.0,
                            vertical: 20.0,
                          ),
                        ),
                        child: const Text(
                          'Registre-se',
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const Text(
              textAlign: TextAlign.center,
              Constants.footterTextoTelaLogin,
              style: TextStyle(
                color: Color(0xFF027353),
                fontSize: 12,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
