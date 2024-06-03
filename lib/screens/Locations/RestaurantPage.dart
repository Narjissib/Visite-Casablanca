import 'package:flutter/material.dart';
import 'package:vs/screens/Home/bottom_bar.dart';
import 'package:vs/screens/Locations/Components/Restaurant.dart';
import 'package:vs/screens/Locations/Location_page.dart';
class RestauPage extends StatelessWidget {
  const RestauPage({super.key});
    static String routeName = "/restaurant";

  @override
  Widget build(BuildContext context) {
return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false, // Empêche l'affichage automatique du bouton "arrow back"
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            InkWell(
              onTap: () {
                Navigator.of(context).pushNamed(Loc.routeName);
              },
              child: Container(
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black26,
                      blurRadius: 6,
                    ),
                  ],
                ),
                child: Icon(
                  Icons.arrow_back,
                  size: 28,
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.location_on,
                  color: Color(0xFFF65959),
                ),
                Text(

                  "Casablanca, Maroc",
                  style: TextStyle(
                    color: Colors.black87,
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                  ),
                )
              ],
            ),
          ],
        ),
         backgroundColor: Colors.white, // Couleur de fond de l'AppBar
        elevation: 0, // Pas d'ombre pour l'AppBar
        iconTheme: IconThemeData(color: Colors.grey), // Couleur des icônes de l'AppBar
      ),

      body: Restaurant(),
      bottomNavigationBar: BottomNavbar(), // Utilisez HomeBottomBar ici pour la navigation en bas de la page

    );   }
}