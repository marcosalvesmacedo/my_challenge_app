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
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  TextEditingController nameController = TextEditingController();
  TextEditingController cpfController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController createPasswordController = TextEditingController();
  TextEditingController confirmPasswordController = TextEditingController();

  bool _isObscureCreatePassword = true;
  bool _isObscureConfirmPassword = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Form(
          key: _formKey,
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
                        key: const ValueKey(Constants.fieldName),
                        controller: nameController,
                        autovalidateMode: AutovalidateMode.onUserInteraction,
                        validator: (value) {
                          return Validators.nameValidator(value.toString());
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
                        key: const ValueKey(Constants.fieldCPF),
                        controller: cpfController,
                        autovalidateMode: AutovalidateMode.onUserInteraction,
                        validator: (value) {
                          return Validators.cpfValidator(value.toString());
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
                        key: const ValueKey(Constants.fieldEmail),
                        controller: emailController,
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
                        height: 10,
                      ),
                      TextFormField(
                        key: const ValueKey(Constants.fieldCreatePassword),
                        controller: createPasswordController,
                        autovalidateMode: AutovalidateMode.onUserInteraction,
                        validator: (value) {
                          return Validators.passwordComplexityValidator(
                              value.toString());
                        },
                        keyboardType: TextInputType.none,
                        obscureText: _isObscureCreatePassword,
                        decoration: InputDecoration(
                          enabledBorder: const UnderlineInputBorder(
                            borderSide: BorderSide(
                              color: Color(0xFF667b68),
                            ),
                          ),
                          focusedBorder: const UnderlineInputBorder(
                            borderSide: BorderSide(
                              color: Color(0xFF027353),
                            ),
                          ),
                          hintText: Constants.fieldCreatePassword,
                          errorStyle: const TextStyle(color: Colors.red),
                          hintStyle: const TextStyle(
                            color: Color(0xFF027353),
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                          ),
                          suffixIcon: IconButton(
                            icon: Icon(
                              _isObscureCreatePassword
                                  ? Icons.visibility
                                  : Icons.visibility_off,
                              color: const Color(0xFF027353),
                            ),
                            onPressed: () {
                              setState(() {
                                _isObscureCreatePassword =
                                    !_isObscureCreatePassword;
                              });
                            },
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      TextFormField(
                        key: const ValueKey(Constants.fieldConfirmPassword),
                        controller: confirmPasswordController,
                        autovalidateMode: AutovalidateMode.onUserInteraction,
                        validator: (value) {
                          return Validators.passwordCompareValidator(
                              value.toString(), createPasswordController.text);
                        },
                        keyboardType: TextInputType.none,
                        obscureText: _isObscureConfirmPassword,
                        decoration: InputDecoration(
                          enabledBorder: const UnderlineInputBorder(
                            borderSide: BorderSide(
                              color: Color(0xFF667b68),
                            ),
                          ),
                          focusedBorder: const UnderlineInputBorder(
                            borderSide: BorderSide(
                              color: Color(0xFF027353),
                            ),
                          ),
                          hintText: Constants.fieldConfirmPassword,
                          hintStyle: const TextStyle(
                            color: Color(0xFF027353),
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                          ),
                          suffixIcon: IconButton(
                            icon: Icon(
                              _isObscureConfirmPassword
                                  ? Icons.visibility
                                  : Icons.visibility_off,
                              color: const Color(0xFF027353),
                            ),
                            onPressed: () {
                              setState(() {
                                _isObscureConfirmPassword =
                                    !_isObscureConfirmPassword;
                              });
                            },
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 50,
                      ),
                      CustomElevatedButton(
                        key: const ValueKey(Constants.buttonRegister),
                        label: Constants.buttonRegister,
                        onPressed: () {
                          if (_formKey.currentState!.validate()) {
                            print(nameController.text);
                            print(cpfController.text);
                            print(emailController.text);
                            print(createPasswordController.text);
                            print(confirmPasswordController.text);
                            return;
                            // adicionar logica de salvar os dados;
                          }
                          ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(
                              content: Text(Constants.missedFields),
                              duration: Duration(
                                days: 0,
                                hours: 0,
                                minutes: 0,
                                seconds: 5,
                                milliseconds: 0,
                                microseconds: 0,
                              ),
                              backgroundColor: Color(0xFFFF0000),
                            ),
                          );
                        },
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
