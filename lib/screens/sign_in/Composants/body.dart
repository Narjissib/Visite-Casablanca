import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:font_awesome_icon_class/font_awesome_icon_class.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:provider/provider.dart';
import 'package:rounded_loading_button/rounded_loading_button.dart';
import '../../../Components/no_account.dart';
import '../../../providers/sign_in_provider.dart';
import '../../../size_config.dart';
import 'login_form.dart';

final emailValidatorRegExp = RegExp(
  r"^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$",
);

class Body extends StatelessWidget {
  Body({Key? key}) : super(key: key);

  //todo add this line to file pubspec.yaml ==> dependencies:
  //*  google_sign_in: ^5.4.2


  @override
  // ignore: override_on_non_overriding_member
  final RoundedLoadingButtonController googlecontroller=RoundedLoadingButtonController();
  final RoundedLoadingButtonController fcbkcontroller=RoundedLoadingButtonController();
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox(
        width: double.infinity,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(10)),
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height: SizeConfig.screenHeight * 0.04),
                Text(
                  "Bienvenue",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: getProportionateScreenWidth(30),
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const Text(
                  "Se connecter avec votre email et mot de passe \nou continuer avec les Réseaux Sociaux",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color(0xFF757575),
                    fontSize: 17,
                  ),
                ),
                SizedBox(height: SizeConfig.screenHeight * 0.08),
                signform(),
                SizedBox(height: SizeConfig.screenHeight * 0.05),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                 
                    RoundedLoadingButton(
                      controller: googlecontroller,
                      successColor: Colors.red,
                      width: MediaQuery.of(context).size.width * 0.80,
                      elevation: 0,
                      borderRadius: 25,
                      color: Colors.red,
                      child: Wrap(
                        children: [
                          Icon(
                            FontAwesomeIcons.google,
                            size: 20,
                            color: Colors.white,
                          ),
                          SizedBox(
                            width: 15,
                          ),
                          Text(
                            "Continuer avec Google",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 15,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),
                      onPressed: () async{
                        //await signInWithGoogle();

 final provider = Provider.of<SigninProvider>(context, listen: false);
    provider.googleLogin(context); 

                         },
                    ),
                  
                  ],
                ),
                SizedBox(height: getProportionateScreenHeight(20)),
                NoAccountText(),
              ],
            ),
          ),
        ),
      ),
    );
  }
  





}