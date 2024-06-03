import 'package:flutter/material.dart';
import 'package:vs/screens/CategorieCard/ou_aller_card/Pages/Boultek/DetailPage4.dart';
class Boultek extends StatelessWidget {
  const Boultek({super.key});

  @override
  void navigateToDetailPage(BuildContext context) {
  Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => DetailPage4()), // Remplacez DetailPage1() par la page que vous souhaitez afficher.
  );
  }

  Widget build(BuildContext context) {
   
return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
         SizedBox(
          height: 10,
        ), Stack(
  children: [
        Container(
          width: 450,
          height: 300,
          padding: EdgeInsets.all(20),
          margin: EdgeInsets.all( 15),
          decoration: BoxDecoration(
            color: Colors.black,
            borderRadius: BorderRadius.circular(15),
            image: DecorationImage(
                image: AssetImage("assets/imgs/img5.jpeg"),
                fit: BoxFit.cover,
                 opacity: 0.7,
            ),
          ),
        ),
        Positioned(
      top: 20,
      right: 20,
      child: InkWell(
        onTap: () {
          navigateToDetailPage(context);
        },
        child: Row(
          children: [
            Text(
              "Plus d'informations",
              style: TextStyle(color: Colors.white, fontSize: 12),
            ),
            SizedBox(width: 5),
            Icon(Icons.arrow_forward, color: Colors.white, size: 12),
          ],
        ),
      ),
    ),
  ],
),
         Padding(
          padding: EdgeInsets.only(left: 35),
          child: Text(
            "Casablanca",
            style: TextStyle(
              color: Color(0xFFFF7643),
              fontSize: 15,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
         Padding(
          padding: EdgeInsets.only(left: 35),
          child: Text(
            "Boultek",
            style: TextStyle(
              color: Color.fromARGB(223, 35, 42, 39),
              fontSize: 15,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(left: 35),
          child: Text(
            "Le Boultek est un espace de rencontre, d'échange, de répétition et de performance pour les artistes des scènes de musique…",
            style: TextStyle(
              color: Colors.black,
              fontSize: 15,
              fontWeight: FontWeight.normal,
            ),
          ),
        ),
      ],
    );  }
}