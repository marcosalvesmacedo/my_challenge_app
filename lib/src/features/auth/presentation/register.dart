import 'package:flutter/material.dart';
import 'package:my_challenge_app/src/constants/constants.dart';
import 'package:my_challenge_app/src/widgets/custom_elevated_button.dart';
import 'package:my_challenge_app/src/widgets/custom_text_field.dart';

class Register extends StatefulWidget {
  const Register({super.key});

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(
                children: <Widget>[
                  Expanded(
                    flex: 4,
                    child: SingleChildScrollView(
                      child: Container(
                        width: MediaQuery.of(context).size.width,
                        padding: const EdgeInsets.symmetric(
                          horizontal: 40,
                          vertical: 20,
                        ),
                        color: const Color(0xFFCDDC3B),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            FittedBox(
                              child: SizedBox(
                                width: 150,
                                height: 150,
                                child: Image.asset(
                                    'assets/images/challenge_logo.png'),
                              ),
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            const Text(
                              Constants.titleRememberMe,
                              style: TextStyle(
                                color: Color(0xFF027353),
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            const Text(
                              Constants.subtitleLogin,
                              style: TextStyle(
                                color: Color(0xFF027353),
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            const CustomTextField(
                              key: ValueKey(Constants.fieldName),
                              hintText: Constants.fieldName,
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            const CustomTextField(
                              key: ValueKey(Constants.fieldCPF),
                              hintText: Constants.fieldCPF,
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            const CustomTextField(
                              key: ValueKey(Constants.fieldEmail),
                              hintText: Constants.fieldEmail,
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            const CustomTextField(
                              key: ValueKey(Constants.fieldCriarSenha),
                              hintText: Constants.fieldCriarSenha,
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            const CustomTextField(
                              key: ValueKey(Constants.fieldRepetirSenha),
                              hintText: Constants.fieldRepetirSenha,
                            ),
                            const SizedBox(
                              height: 50,
                            ),
                            CustomElevatedButton(
                              key: const ValueKey(Constants.buttonCadastrar),
                              label: Constants.buttonCadastrar,
                              onPressed: () {
                                print('botão de cadastrar');
                              },
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: Container(
                      width: MediaQuery.of(context).size.width,
                      padding: const EdgeInsets.symmetric(
                        horizontal: 20,
                        vertical: 20,
                      ),
                      color: const Color(0xFFFFFFFF),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: <Widget>[
                          CustomElevatedButton(
                            key:
                                const ValueKey(Constants.buttonVoltarParaLogin),
                            label: Constants.buttonVoltarParaLogin,
                            onPressed: () {
                              Navigator.of(context).pop();
                            },
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          const Text(
                            Constants.footterTextoTelaLogin,
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Color(0xFF027353),
                              fontSize: 12,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
