import 'package:flutter/material.dart';
import 'package:vs/screens/CategorieCard/que_faie_card/pages/Tachfin/DetailPage4.dart';
class TachfineCentre extends StatelessWidget {
  const TachfineCentre({super.key});

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
        ),
         Padding(
              padding: EdgeInsets.only(left: 20),
              child: Text(
                "Shopping",
                style: TextStyle(
                  color: Color.fromARGB(223, 35, 42, 39),
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
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
                image: AssetImage("assets/imgs/Tachfin.jpg"),
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
            "Tachfine Center",
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
"le Boulevard Tachfine reprend des couleurs avec l’ouverture du Tachfine Center, le 1er centre commercial de Marjane Holding.Le quartier Belvédère retrouve tout son lustre en accueillant le Tachfine Center qui abrite plus de 70 enseignes dont un Hypermarché Marjane, un food court, un Fun Park, un hôtel 3* ainsi que 8800 m² de plateaux de bureaux.",
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