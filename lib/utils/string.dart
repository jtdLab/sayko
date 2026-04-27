import 'package:email_validator/email_validator.dart';

final _startOrEndRegExp = RegExp(r'^[A-Za-zÄÖÜäöü0-9].*[A-Za-zÄÖÜäöü0-9]$');

final _validCharactersRegExp = RegExp(r'^[A-Za-zÄÖÜäöü0-9_-]*$');

extension StringX on String {
  bool get isValidEmail => EmailValidator.validate(this);

  bool get isValidName {
    if (length < 3) {
      return false;
    }
    if (length > 15) {
      return false;
    }
    if (!_validCharactersRegExp.hasMatch(this)) {
      return false;
    }
    if (!_startOrEndRegExp.hasMatch(this)) {
      return false;
    }

    return true;
  }

  bool get isValidPassword => length >= 6;
}
