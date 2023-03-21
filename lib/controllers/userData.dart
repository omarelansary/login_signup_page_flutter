import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:registration/controllers/vlaidation.dart';

// ignore: camel_case_types
class userData extends ChangeNotifier {
  String email = '';
  bool emailValidity = false;
  bool passwordValidity = false;
  String password = '';
  String firstName = '';
  String lastName = '';
  login_signup_validation validationLogInSignUp = login_signup_validation();

  void changeEmail(String inputEmail) {
    emailValidity = validationLogInSignUp.checkEmail(inputEmail);
    if (emailValidity) {
      emailValidity = true;
      email = inputEmail;
      notifyListeners();
    }
  }

  void changePassword(String inputpass) {
    if (inputpass.length >= 2) {
      password = inputpass;
      passwordValidity=true;
      notifyListeners();
    }
    else{
      passwordValidity=false;
      notifyListeners();
    }
  }

  String getEmail() {
    return email;
  }
}
