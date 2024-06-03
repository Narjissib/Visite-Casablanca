import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:vs/screens/Locations/EventPages/Event9/DetailEvent9.dart';
class Event9 extends StatelessWidget {
  const Event9({super.key});
@override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height /1.7,
      padding: EdgeInsets.only(top: 20, left: 20, right: 20),
      decoration: BoxDecoration(
        color: Color(0xFFEDF2F6),
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(40),
          topRight: Radius.circular(40),
        ),
      ),
      child: ListView(
        children: [
          Padding(
            padding: EdgeInsets.only(top: 10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => DetailPage9()),
                    );
                  },
                  child: Row(
                    children: [
                      Icon(
                        Icons.location_on,
                        size: 20,
                        color: Colors.black,
                      ),
                      SizedBox(width: 10),
                      Expanded(
                        child: Text(
                          " 5 Rue Essanaani, Casablanca 20000",
                          style: TextStyle(
                            fontSize: 13,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Compagnie Marocaine des Oeuvres et Objets d'Art",
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.star,
                          color: Colors.amber,
                        ),
                        Text(
                          "4.5",
                          style: TextStyle(fontWeight: FontWeight.w600),
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(height: 10),
                Row(
                  children: [
                    Icon(
                      Icons.phone,
                      size: 15,
                      color: Colors.black,
                    ),
                    SizedBox(width: 10),
                    Text(
                      "+212674222222", // Replace this with the actual phone number
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 10),
                Text(
                  "Fondée en avril 2002 par Hicham DAOUDI, La CMOOA, Compagnie Marocaine des Œuvres et Objets d’Art est la première maison de ventes aux enchères au Maroc. Le 28 décembre de la même année, elle a inauguré ses activités dans le cadre prestigieux de l’hôtel La Mamounia à Marrakech. En janvier 2004, la CMOOA s’est dotée d’une Salle de ventes au cœur de Casablanca. Lieu d’exposition et d’adjudication, elle accueille désormais régulièrement des événements qui rencontrent un public d’amateurs et d’institutionnels toujours plus nombreux.Au fil des ventes, qu’il s’agisse de peinture orientaliste, de peinture et sculpture marocaine moderne et contemporaine ou d’œuvres d’art internationales moderne et contemporaine, la CMOOA a su conquérir un large cercle d’amateurs d’art et de professionnels et gagner ainsi une indéniable reconnaissance internationale. La Compagnie Marocaine des Œuvres et Objets d’Art a pour vocation aujourd’hui de se positionner comme une plateforme incontournable du marché de l’art.",
                  style: GoogleFonts.robotoSlab(
                    textStyle: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
                SizedBox(height: 10),
                // Solution 1: Utiliser Expanded pour chaque image
               
              ],
            ),
          ),
        ],
      ),
    );
  }
}