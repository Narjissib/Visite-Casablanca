import 'package:flutter/material.dart';
import 'package:vs/screens/sign_in/Login.dart';
import 'package:vs/screens/sign_up/Composants/body.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});
  static String routeName="/sign_up";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        
          centerTitle: false,
      // ignore: prefer_const_constructors
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
      // Naviguer vers la nouvelle page lors du clic sur l'icône
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
      // ignore: prefer_const_constructors
      body: Body(),

    );
  }
}