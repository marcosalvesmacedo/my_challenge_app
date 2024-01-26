import 'package:flutter/material.dart';
import 'package:my_challenge_app/src/constants/constants.dart';
import 'package:my_challenge_app/src/validators/validators.dart';
import 'package:my_challenge_app/src/widgets/custom_elevated_button.dart';
import 'package:my_challenge_app/src/widgets/custom_text_field.dart';

class RememberMe extends StatefulWidget {
  const RememberMe({super.key});

  @override
  State<RememberMe> createState() => _RememberMeState();
}

class _RememberMeState extends State<RememberMe> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  bool _btnEnable = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Form(
          key: _formKey,
          onChanged: () {
            setState(() {
              _btnEnable = _formKey.currentState!.validate();
            });
          },
          child: Center(
            child: ListView(
              children: <Widget>[
                Container(
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
                          child:
                              Image.asset('assets/images/challenge_logo.png'),
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
                        autovalidateMode: AutovalidateMode.onUserInteraction,
                        validator: (value) {
                          return Validators.emailValidator(value.toString());
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
                        height: 50,
                      ),
                      CustomElevatedButton(
                        key: const ValueKey(Constants.buttonRescue),
                        label: Constants.buttonRescue,
                        onPressed: _btnEnable
                            ? () {
                                print('botão de recuperar senha');
                              }
                            : null,
                      ),
                    ],
                  ),
                ),
                Container(
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
                        key: const ValueKey(Constants.buttonGoBackLogin),
                        label: Constants.buttonGoBackLogin,
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      const Text(
                        Constants.footterScreenTextLogin,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Color(0xFF027353),
                          fontSize: 12,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
