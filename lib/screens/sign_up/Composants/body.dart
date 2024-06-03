// ignore_for_file: prefer_const_constructors, camel_case_types

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:vs/screens/sign_up/Composants/sign_up_form.dart';
import 'package:font_awesome_icon_class/font_awesome_icon_class.dart';
import 'package:rounded_loading_button/rounded_loading_button.dart';
import '../../../providers/sign_in_provider.dart';
import '../../../size_config.dart';




final emailValidatorRegExp = RegExp(
  r"^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$",
);
class Body extends StatelessWidget {
   Body({super.key});

  @override
  // ignore: override_on_non_overriding_member
  final RoundedLoadingButtonController googlecontroller=RoundedLoadingButtonController();
  final RoundedLoadingButtonController fcbkcontroller=RoundedLoadingButtonController();
  Widget build(BuildContext context) {
    return SafeArea(
      child:SizedBox(
        width: double.infinity,
      child: Padding(
         padding: EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(10)),
        child: SingleChildScrollView(
          child: Column(
             children: [
                SizedBox(height: SizeConfig.screenHeight * 0.04), // 4%
                Text("Créer un compte",style: TextStyle(
                    color: const Color.fromRGBO(0, 0, 0, 1),
                    fontSize: getProportionateScreenWidth(30),
                    fontWeight: FontWeight.bold,
                  ),),
                Text(
                  "Complétez vos coordonnées ou continuez \navec les réseaux sociaux",
                 textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color(0xFF757575),
                    fontSize: 17,
                  ),
                ),
                SizedBox(height: SizeConfig.screenHeight * 0.08),
                SignUpForm(),
                SizedBox(height: SizeConfig.screenHeight * 0.04),
               Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    //gmail login button
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
                Text(
                  'En continuant, vous confirmez que vous acceptez \navec nos termes et conditions',
                  textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.caption,
                )
              ],
           ),
        ),
      ),
      ),
    );
  }
}