import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:vs/screens/Home/Hoome.dart';
import 'package:vs/screens/sign_in/Composants/body.dart';

// ignore: camel_case_types
class homescreen extends StatelessWidget {
  static String routeName = "/Home";

  const homescreen({super.key});

  @override
  Widget build(BuildContext context)=>Scaffold(
    body:StreamBuilder(
      stream:FirebaseAuth.instance.authStateChanges(),
      builder: (context,snapshot){
        if(snapshot.connectionState==ConnectionState.waiting){
          return Center(
            child: CircularProgressIndicator(),
          );
        }
        else if(snapshot.hasData){
          return Home();
        }
        else if(snapshot.hasError){
          return Center(
            child: Text("il y a un soucis"),
          );
        }
        else{
          return Body();
        }
      },


    )
  );
    
  }

