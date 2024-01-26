import 'package:cpf_cnpj_validator/cpf_validator.dart';
import 'package:my_challenge_app/src/constants/constants.dart';
import 'package:my_challenge_app/src/constants/regexs.dart';

class Validators {
  static dynamic nameValidator(String value) {
    if (value.isEmpty) {
      return Constants.invalidField;
    }

    if (!RegExp(Regexs.name).hasMatch(value)) {
      return Constants.invalidName;
    }

    return Constants.emptyString;
  }

  static dynamic cpfValidator(String value) {
    if (value.isEmpty) {
      return Constants.invalidField;
    }

    if (!CPFValidator.isValid(value)) {
      return Constants.invalidCPF;
    }

    return Constants.emptyString;
  }

  static dynamic emailValidator(String value) {
    if (value.isEmpty) {
      return Constants.invalidField;
    }

    if (!RegExp(Regexs.email).hasMatch(value)) {
      return Constants.invalidEmail;
    }

    return Constants.emptyString;
  }

  static dynamic passwordComplexityValidator(String value) {
    if (value.isEmpty) {
      return Constants.invalidField;
    }

    if (!RegExp(Regexs.passwordWeakness).hasMatch(value)) {
      return Constants.invalidPassword;
    }

    return Constants.emptyString;
  }

  static dynamic passwordCompareValidator(String value, String valueToCompare) {
    if (value.isEmpty) {
      return Constants.invalidField;
    }

    if (value != valueToCompare) {
      return Constants.invalidPasswordConfirm;
    }

    return Constants.emptyString;
  }
}
