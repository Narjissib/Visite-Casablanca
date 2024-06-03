// ignore: file_names
import 'package:flutter/material.dart';
import 'package:vs/screens/Complter_profile/Composants/body.dart';
import 'package:vs/screens/sign_in/Login.dart';


class CompleteProfileScreen extends StatelessWidget {
  final String email;
  CompleteProfileScreen({required this.email});
  static String routeName="/Complete_profile";


  @override

  Widget build(BuildContext context) {
    // ignore: unnecessary_null_comparison
    if (email == null) {
      // Handle the case where email is null (e.g., show an error or navigate back)
      return Scaffold(
        body: Center(
          child: Text("Email not provided"),
        ),
      );
    }
    return Scaffold(
        appBar: AppBar(
          centerTitle: false,
      title: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: const [    
        SizedBox(
        width: 10,
      ),
         Text(
        "S'inscrire",
        style: TextStyle(
          color: Color(0xFF757575),
           fontSize: 17, // Taille de la police (en pixels)
          ),
          textAlign: TextAlign.right, // Aligner le texte à droite
      ), 
     
    ],
  ),
  leading: IconButton(
    icon: Icon(Icons.arrow_back),
    onPressed: () {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => login()), // Remplacez NouvellePage() par le widget de votre page de destination
      );
    },
      ),
       backgroundColor: Colors.white, // Couleur de fond de l'AppBar
        elevation: 0, // Pas d'ombre pour l'AppBar
        iconTheme: IconThemeData(color: Colors.grey), // Couleur des icônes de l'AppBar
      ),
      body: Body(email: email,),
    );
  }
}