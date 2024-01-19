import 'package:flutter/material.dart';
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
  bool _isButtonClicked = false; // Removido 'final'

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
                vertical: 110,
              ),
              color: const Color(0xFFCDDC3B),
              child: Column(
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
                      hintStyle: TextStyle(
                        color: Color(0xFF667b68), // Removido ponto e vírgula
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
                  const SizedBox(height: 50),
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xFF027353),
                        shape: RoundedRectangleBorder(), // Adicionado 'BorderRadius'
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
                ],
              ),
            ),
            const SizedBox(height: 50),
            Container(
              width: MediaQuery.of(context).size.width,
              padding: const EdgeInsets.symmetric(
                horizontal: 40,
                vertical: 20,
              ),
              color: const Color(0xFFFFFFFF),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.of(context).pushNamed(AppRoutes.remember);
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFF027353),
                  shape: RoundedRectangleBorder(), // Adicionado 'BorderRadius'
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
          ],
        ),
      ),
    );
  }
}
