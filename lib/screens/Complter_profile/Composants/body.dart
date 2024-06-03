import 'package:flutter/material.dart';
import 'package:vs/size_config.dart';
import 'Complete_profile_form.dart';


class Body extends StatelessWidget {
   Body({super.key, required this.email});
      final String email; 


  @override
    // ignore: override_on_non_overriding_member

  Widget build(BuildContext context) {
    
    return SizedBox(
      width: double.infinity,
      child: Padding(
        padding: 
        EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Text(
                "Compléter votre profil",
                 style: TextStyle(
                        color: Colors.black,
                        fontSize: getProportionateScreenWidth(30),
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text("Complter les detaille ou contunier \navec les réseaux sociaux",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Color(0xFF757575),
                        fontSize: 17,
                      ),
                    ),
                    SizedBox(height: SizeConfig.screenHeight*0.05),
                    // ignore: prefer_const_constructors
                    CompleteProfileForm(email: email),
                    SizedBox(height: getProportionateScreenHeight(30)),
                    Text(
                  'En continuant, vous confirmez que vous acceptez \navec nos termes et conditions',
                  textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.caption,
                )
            ],
          ),
        ),
      ),
    );
  }
}

