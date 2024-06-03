import 'package:flutter/material.dart';
import 'package:vs/screens/sign_up/sign_up_screen.dart';


import '../size_config.dart';
class NoAccountText extends StatelessWidget {
  const NoAccountText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
     mainAxisAlignment: MainAxisAlignment.center,
     children: [
       Text(
         "Vous n'avez pas de compte? ",
         style: TextStyle(fontSize: getProportionateScreenWidth(16)),
       ),
       GestureDetector(
        onTap: () => Navigator.popAndPushNamed(context, SignUpScreen.routeName),
         child: Text("Créer un compte",
         style: TextStyle(
           fontSize: getProportionateScreenWidth(16),
           color: Colors.grey,
          
         ),
         ),
       ),
       
     ],
    );
  }
}

