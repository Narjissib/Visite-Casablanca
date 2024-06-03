import 'package:flutter/material.dart';
import 'package:vs/screens/CategorieCard/ou_aller_card/Pages/A%C3%A9roclub/DetailPage1.dart';

class Aeroclub extends StatelessWidget {
  const Aeroclub({super.key});

  @override
  void navigateToDetailPage(BuildContext context) {
  Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => DetailPage1()), // Remplacez DetailPage1() par la page que vous souhaitez afficher.
  );
}
  Widget build(BuildContext context) {
   return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
         SizedBox(
          height: 10,
        ),
        Stack(
  children: [
    Container(
      width: 450,
      height: 300,
      padding: EdgeInsets.all(20),
      margin: EdgeInsets.all(15),
      decoration: BoxDecoration(
        color: Colors.black,
        borderRadius: BorderRadius.circular(15),
        image: DecorationImage(
          image: AssetImage("assets/imgs/img1.jpg"),
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
            "Aéroclub de Tit Mellil",
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
            "Découvrez la région de Casablanca-Settat vue du ciel en réservant un vol d’initiation auprès de l’aéroclub de Tit Mellil. Sensations…",
            style: TextStyle(
              color: Colors.black,
              fontSize: 15,
              fontWeight: FontWeight.normal,
            ),
          ),
        ),
      ],
    );
  }
}
