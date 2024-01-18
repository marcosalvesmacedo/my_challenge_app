import 'package:flutter/material.dart';
import 'package:my_challenge_app/src/widgets/custom_text_field.dart';

class Remember extends StatefulWidget {
  const Remember({super.key});

  @override
  State<Remember> createState() => _RememberState();
}

class _RememberState extends State<Remember> {
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
                    flex: 2,
                    child: Container(
                      width: MediaQuery.of(context).size.width,
                      padding: const EdgeInsets.all(20),
                      color: const Color(0xFFCDDC3B),
                      child: const Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text(
                            'FAÇA SEU CADASTRO',
                            style: TextStyle(
                              color: Color(0xFF027353),
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            'NO CHALLENGE =)',
                            style: TextStyle(
                              color: Color(0xFF027353),
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          CustomTextField(
                            key: ValueKey('NOME'),
                            hintText: 'NOME',
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          CustomTextField(
                            key: ValueKey('CPF'),
                            hintText: 'CPF',
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          CustomTextField(
                            key: ValueKey('CELULAR'),
                            hintText: 'CELULAR',
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          CustomTextField(
                            key: ValueKey('CRIAR SENHA'),
                            hintText: 'CRIAR SENHA',
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          CustomTextField(
                            key: ValueKey('REPETIR SENHA'),
                            hintText: 'REPETIR SENHA',
                          ),
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: Container(
                      width: MediaQuery.of(context).size.width,
                      padding: const EdgeInsets.all(20),
                      color: const Color(0xFFFFFFFF),
                      child: const Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text(
                            'BEM VINDO AO MEU ALELO =)',
                            style: TextStyle(
                              color: Color(0xFF027353),
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
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
