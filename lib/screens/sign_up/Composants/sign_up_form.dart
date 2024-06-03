import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:vs/screens/Complter_profile/Complete_profile_screen.dart';
import 'package:vs/screens/sign_in/Composants/body.dart';
import '../../../Components/CustomSurffixIcon.dart';
import '../../../Components/default_button.dart';
import '../../../Components/form_error.dart';
import '../../../conts/string.dart';
import '../../../size_config.dart';

class SignUpForm extends StatefulWidget {
  @override
  State<SignUpForm> createState() => _SignUpFormState();
}

class _SignUpFormState extends State<SignUpForm> {
  String? email;
  String? password;
  String? confirmPassword;
  List<String> errors = [];
  final _formKey = GlobalKey<FormState>();
   final _emailcontroller = TextEditingController();
  final _mdpcontroller = TextEditingController();
  final _cnfrmmdpcontroller = TextEditingController();

  Future<void> signup() async {
    if (mdpconfirme()) {
      try {
        await FirebaseAuth.instance.createUserWithEmailAndPassword(
          email: email!.trim(),
          password: password!.trim(),
        );

        // Naviguez vers la page suivante (CompleteProfileScreen) en passant l'email en tant qu'argument.
    Navigator.push(
  context,
  MaterialPageRoute(
    builder: (context) => CompleteProfileScreen(
      email: _emailcontroller.text.trim(),
    ),
  ),
);
      } catch (e) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text("Erreur lors de l'enregistrement de l'email."),
            backgroundColor: Colors.red,
          ),
        );
      }
    }
  }

  bool mdpconfirme() {
    if (_mdpcontroller.text.trim() == _cnfrmmdpcontroller.text.trim()) {
      return true;
    } else {
      return false;
    }
  }

  @override
  void dispose() {
    super.dispose();
    _emailcontroller.dispose();
    _mdpcontroller.dispose();
    _cnfrmmdpcontroller.dispose();
  }

  void addError({required String error}) {
    if (!errors.contains(error))
      setState(() {
        errors.add(error);
      });
  }

  void removeError({required String error}) {
    if (errors.contains(error))
      setState(() {
        errors.remove(error);
      });
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          buildEmailFormField(),
          SizedBox(height: getProportionateScreenHeight(30)),
          buildPasswordFormField(),
          SizedBox(height: getProportionateScreenHeight(30)),
          buildConfirmPasswordFormField(),
          FormError(errors: errors),
          SizedBox(height: getProportionateScreenHeight(40)),
          DefaultButton(
            text: "Continuer",
            press: () async {
              if (_formKey.currentState!.validate()) {
                _formKey.currentState!.save();
                await signup();
              }
            },
          ),
        ],
      ),
    );
  }


  TextFormField buildConfirmPasswordFormField() {
    return TextFormField(
      controller: _cnfrmmdpcontroller,
      obscureText: true,
      onSaved: (newValue) => confirmPassword = newValue,
      onChanged: (value) {
        if (value.isNotEmpty) {
          removeError(error: kPassNullError);
        } else if (value.isNotEmpty && password == confirmPassword) {
          removeError(error: kMatchPassError);
        }
        confirmPassword = value;
      },
      validator: (value) {
        if (value!.isEmpty) {
          addError(error: kPassNullError);
          return "";
        } else if ((password != value)) {
          addError(error: kMatchPassError);
          return "";
        }
        return null;
      },
      decoration: InputDecoration(
        labelText: "Confirm Password",
        hintText: "Re-enter your password",
        // If  you are using the latest version of flutter then label text and hint text shown like this
        // if you r using flutter less than 1.20.* then maybe this is not working properly
        floatingLabelBehavior: FloatingLabelBehavior.always,
        suffixIcon: CustomSurffixIcon(svgIcon: "assets/icons/lock2.svg"),      
        ),
    );
  }

  TextFormField buildPasswordFormField() {

    return TextFormField(
      controller: _mdpcontroller,
      obscureText: true,
      onSaved: (newValue) => password = newValue,
      onChanged: (value) {
        if (value.isNotEmpty) {
          removeError(error: kPassNullError);
        } else if (value.length >= 8) {
          removeError(error: kShortPassError);
        }
        password = value;
      },
      validator: (value) {
        if (value!.isEmpty) {
          addError(error: kPassNullError);
          return "";
        } else if (value.length < 8) {
          addError(error: kShortPassError);
          return "";
        }
        return null;
      },
      decoration: InputDecoration(
        labelText: "Password",
        hintText: "Enter your password",
        // If  you are using the latest version of flutter then label text and hint text shown like this
        // if you r using flutter less than 1.20.* then maybe this is not working properly
        floatingLabelBehavior: FloatingLabelBehavior.always,
        suffixIcon: CustomSurffixIcon(svgIcon: "assets/icons/lock2.svg"),
      ),
    );
  }

  TextFormField buildEmailFormField() {
    return TextFormField(
      controller: _emailcontroller,
      keyboardType: TextInputType.emailAddress,
      onSaved: (newValue) => email = newValue,
      onChanged: (value) {
        if (value.isNotEmpty) {
          removeError(error: Emailerror);
        } else if (emailValidatorRegExp.hasMatch(value)) {
          removeError(error: kInvalidEmailError);
        }
      },
      validator: (value) {
        if (value!.isEmpty) {
          addError(error: Emailerror);
          return "";
        } else if (!emailValidatorRegExp.hasMatch(value)) {
          addError(error: kInvalidEmailError);
          return "";
        }
        return null;
      },
      decoration: InputDecoration(
        labelText: "Email",
        hintText: "Enter your email",
        // If  you are using the latest version of flutter then label text and hint text shown like this
        // if you r using flutter less than 1.20.* then maybe this is not working properly
        floatingLabelBehavior: FloatingLabelBehavior.always,
  suffixIcon: CustomSurffixIcon(svgIcon: "assets/icons/user.svg"),   
     ),
      
    );
  }
}