import 'package:flutter/material.dart';

import '../Pages/AncienneMedina/DetailPage2.dart';

class AncienneMedina extends StatelessWidget {
  const AncienneMedina({super.key});

  @override
  void navigateToDetailPage(BuildContext context) {
 /* Navigator.push(
    //context,
   // MaterialPageRoute(builder: (context) => DetailPage1()), // Remplacez DetailPage1() par la page que vous souhaitez afficher.
  );*/
  }
  Widget build(BuildContext context) {
   return 
       Column(
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
              margin: EdgeInsets.all( 15),
              decoration: BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.circular(15),
                image: DecorationImage(
                    image: AssetImage("assets/imgs/img22.png"),
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
 Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => DetailPage2()), // Remplacez DetailPage1() par la page que vous souhaitez afficher.
  );        },
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
                "Ancienne médina de Casablanca",
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
                "L’ancienne médina se situe entre le boulevard des Almohades et la Place des Nations Unies. Ceinte de remparts datant du…",
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