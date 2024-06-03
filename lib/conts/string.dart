import 'package:flutter/material.dart';

import '../size_config.dart';

const appname = "VisiteCasablanca";
const Emailerror="Merci d'entrer votre email";
const kInvalidEmailError = "Merci d'entrer un Email valide";
const kPassNullError = "Merci d'entrer votre mot de passe";
const kShortPassError = "Le mot de passe n'est pas assez long";
const kMatchPassError = "Les mots de passe sont différents";
const kNamelNullError = "Merci d'entrer votre nom";
const kPhoneNumberNullError = "Merci d'entrer votre numero de téléphone";
const kAddressNullError = "Merci d'entrer votre adresse";
final otpInputDecoration = InputDecoration(
  contentPadding:
      EdgeInsets.symmetric(vertical: getProportionateScreenWidth(15)),
  border: outlineInputBorder(),
  focusedBorder: outlineInputBorder(),
  enabledBorder: outlineInputBorder(),
);

OutlineInputBorder outlineInputBorder() {
  return OutlineInputBorder(
    borderRadius: BorderRadius.circular(getProportionateScreenWidth(15)),
    borderSide: BorderSide(color: Color(0xFF757575)),
  );
}