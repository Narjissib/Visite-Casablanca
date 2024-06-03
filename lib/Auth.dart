import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:vs/screens/Home/Home_Screen.dart';
import 'package:vs/screens/Home/Hoome.dart';
import 'package:vs/screens/sign_in/Login.dart';

class Auth extends StatelessWidget {
  static String routeName = "/Auth";

  const Auth({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StreamBuilder<User?>(
        stream: FirebaseAuth.instance.authStateChanges(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(
              child: CircularProgressIndicator(),
            );
          } else if(snapshot.hasData) {
            return Home();
          } else {
            return login();
          }
        },
      ),
    );
  }
}
