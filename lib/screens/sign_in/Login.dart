import 'package:flutter/material.dart';
import 'package:vs/screens/Welcomepage.dart';
import 'package:vs/screens/sign_in/Composants/body.dart';

class login extends StatelessWidget {
  static String routeName = "/login";

  const login({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
              'Se Connecter',
              style: TextStyle(
                color: Color(0xFF757575),
                fontSize: 17,
              ),
              textAlign: TextAlign.right,
            ),
          ],
        ),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Welcomepage()),
            );
          },
        ),
        backgroundColor: Colors.white, // Couleur de fond de l'AppBar
        elevation: 0, // Pas d'ombre pour l'AppBar
        iconTheme: IconThemeData(color: Colors.grey), // Couleur des icônes de l'AppBar
      ),
      body: Body(),
    );
  }
}
