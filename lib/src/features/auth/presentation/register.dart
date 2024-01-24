import 'package:cpf_cnpj_validator/cpf_validator.dart';
import 'package:flutter/material.dart';
import 'package:my_challenge_app/src/constants/constants.dart';
import 'package:my_challenge_app/src/constants/masks.dart';
import 'package:my_challenge_app/src/validators/validators.dart';
import 'package:my_challenge_app/src/widgets/custom_elevated_button.dart';

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
                            TextFormField(
                              autovalidateMode:
                                  AutovalidateMode.onUserInteraction,
                              validator: (value) {
                                return Validators.nameValidator(
                                    value.toString());
                              },
                              keyboardType: TextInputType.name,
                              decoration: const InputDecoration(
                                enabledBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Color(0xFF667b68),
                                  ),
                                ),
                                focusedBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Color(0xFF027353),
                                  ),
                                ),
                                hintText: Constants.fieldName,
                                hintStyle: TextStyle(
                                  color: Color(0xFF027353),
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            TextFormField(
                              autovalidateMode:
                                  AutovalidateMode.onUserInteraction,
                              validator: (value) {
                                return Validators.cpfValidator(
                                    value.toString());
                              },
                              inputFormatters: [Masks.cpfMaskFormatter],
                              keyboardType: TextInputType.number,
                              decoration: const InputDecoration(
                                enabledBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Color(0xFF667b68),
                                  ),
                                ),
                                focusedBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Color(0xFF027353),
                                  ),
                                ),
                                hintText: Constants.fieldCPF,
                                hintStyle: TextStyle(
                                  color: Color(0xFF027353),
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            TextFormField(
                              autovalidateMode:
                                  AutovalidateMode.onUserInteraction,
                              validator: (value) {
                                return Validators.emailValidator(
                                    value.toString());
                              },
                              keyboardType: TextInputType.emailAddress,
                              decoration: const InputDecoration(
                                enabledBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Color(0xFF667b68),
                                  ),
                                ),
                                focusedBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Color(0xFF027353),
                                  ),
                                ),
                                hintText: Constants.fieldEmail,
                                hintStyle: TextStyle(
                                  color: Color(0xFF027353),
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            /*const CustomTextField(
                              key: ValueKey(Constants.fieldCriarSenha),
                              hintText: Constants.fieldCriarSenha,
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            const CustomTextField(
                              key: ValueKey(Constants.fieldRepetirSenha),
                              hintText: Constants.fieldRepetirSenha,
                            ),*/
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
