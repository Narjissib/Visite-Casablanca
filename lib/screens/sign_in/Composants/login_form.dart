import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:vs/screens/Home/Hoome.dart';
import '../../../Components/CustomSurffixIcon.dart';
import '../../../Components/default_button.dart';
import '../../../Components/form_error.dart';
import '../../../conts/string.dart';
import '../../../size_config.dart';
import 'body.dart';

class signform extends StatefulWidget {
  const signform({super.key});

  @override
  State<signform> createState() => _signformState();
}

class _signformState extends State<signform> {
  final _formKey = GlobalKey<FormState>();
  final List<String> errors = [];
  String email = '';
  String mdp = '';
  bool remember = false;
  String errorMessage = "";
  final _emailcontroller = TextEditingController();
  final _mdpcontroller = TextEditingController();
  SharedPreferences? _prefs;

  Future<void> signIn() async {
    try {
      await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: _emailcontroller.text.trim(),
        password: _mdpcontroller.text.trim(),
      );

      // Sauvegarder l'état du checkbox dans les SharedPreferences
      _prefs?.setBool('remember_me', remember);

      if (remember) {
        // Sauvegarder les informations de connexion de l'utilisateur
        _prefs?.setString('email', email);
        _prefs?.setString('mdp', mdp);
      } else {
        // Supprimer les informations de connexion de l'utilisateur
        _prefs?.remove('email');
        _prefs?.remove('mdp');
      }

      // Si la connexion est réussie, redirigez l'utilisateur vers la page homescreen
      Navigator.pushAndRemoveUntil(
        context,
        MaterialPageRoute(builder: (context) => Home()),
        (route) => false, // Supprimez toutes les autres routes de la pile
      );
    } catch (e) {
      // Si une erreur se produit lors de la connexion, affichez un SnackBar pour informer l'utilisateur de l'erreur.
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text("Erreur lors de la connexion : $e"),
          backgroundColor: Colors.red,
        ),
      );
    }
  }

  @override
  void initState() {
    super.initState();
    loadPrefs();
  }

  Future<void> loadPrefs() async {
    _prefs = await SharedPreferences.getInstance();
    setState(() {
      remember = _prefs?.getBool('remember_me') ?? false;
      // Remplir automatiquement les champs d'email et de mot de passe si le checkbox est coché
      if (remember) {
        email = _prefs?.getString('email') ?? '';
        mdp = _prefs?.getString('mdp') ?? '';
        _emailcontroller.text = email;
        _mdpcontroller.text = mdp;
      }
    });
  }

  @override
  void dispose() {
    super.dispose();
    _emailcontroller.dispose();
    _mdpcontroller.dispose();
  }

  void addError({String? error}) {
    if (!errors.contains(error))
      setState(() {
        errors.add(error!);
      });
  }

  void removeError({String? error}) {
    if (errors.contains(error))
      setState(() {
        errors.remove(error);
      });
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: SingleChildScrollView(
        child: Column(
          children: [
            buildEmailFormField(),
            SizedBox(height: getProportionateScreenHeight(30)),
            buildPasswordFormField(),
            SizedBox(height: getProportionateScreenHeight(30)),
            Row(
              children: [
                Checkbox(
                  value: remember,
                  activeColor: Colors.grey,
                  onChanged: (value) {
                    setState(() {
                      remember = value!;
                    });
                  },
                ),
                Text("Se souvenir de moi"),
                Spacer(),
                
              ],
            ),
            FormError(errors: errors),
            if (errorMessage.isNotEmpty)
              Text(
                errorMessage,
                style: TextStyle(color: Colors.red),
              ),
            SizedBox(height: getProportionateScreenHeight(20)),
            DefaultButton(
              text: "Continue",
              press: () {
                if (_formKey.currentState!.validate()) {
                  _formKey.currentState!.save();
                  signIn();
                }
              },
            ),
          ],
        ),
      ),
    );
  }

  TextFormField buildPasswordFormField() {
    return TextFormField(
      controller: _mdpcontroller,
      obscureText: true,
      onSaved: (newValue) => mdp = newValue!,
      onChanged: (value) {
        if (value.isNotEmpty) {
          removeError(error: kPassNullError);
        } else if (value.length >= 8) {
          removeError(error: kShortPassError);
        }
        mdp = value;
        if (errors.contains("Aucun compte trouvé")) {
          setState(() {
            errors.remove("Aucun compte trouvé");
          });
        }
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
        floatingLabelBehavior: FloatingLabelBehavior.always,
        suffixIcon: CustomSurffixIcon(svgIcon: "assets/icons/lock2.svg"),
      ),
    );
  }

  TextFormField buildEmailFormField() {
    return TextFormField(
      controller: _emailcontroller,
      keyboardType: TextInputType.emailAddress,
      onSaved: (newValue) => email = newValue!,
      onChanged: (value) {
        if (value.isNotEmpty) {
          removeError(error: Emailerror);
        } else if (emailValidatorRegExp.hasMatch(value)) {
          removeError(error: kInvalidEmailError);
        }
        if (errors.contains("Aucun compte trouvé")) {
          setState(() {
            errors.remove("Aucun compte trouvé");
          });
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
        floatingLabelBehavior: FloatingLabelBehavior.always,
        suffixIcon: CustomSurffixIcon(svgIcon: "assets/icons/mail.svg"),
      ),
    );
  }
}
