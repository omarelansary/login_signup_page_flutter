import 'package:flutter/material.dart';
import 'package:email_validator/email_validator.dart';

class login_signup_validation
{
  bool checkEmail (String inputEmail)
  {
    return EmailValidator.validate(inputEmail);
  }
}