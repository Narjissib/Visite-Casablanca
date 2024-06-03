import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:vs/screens/Locations/EventPages/Event5/DetailEvent5.dart';
class Event5 extends StatelessWidget {
  const Event5({super.key});

@override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height / 2.3,
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
                      MaterialPageRoute(builder: (context) => DetailPage5()),
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
                          "Rond Point Azbane 20190 Casablanca",
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
                      "Palais Ines Casablanca",
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
                      "+212663336718", // Replace this with the actual phone number
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 10),
                Text(
                  "Implanté dans un quartier en plein essor de Casablanca, à quelques kms du centre ville,le Palais Ines a ouvert ses portes récemment pour y acceuillir fêtes privées, diners de gala, expositions, conférences et réunions.Un lieu élégant et professionnel qui s’amènage selon les besoins de l’évènement.Outre un grand foyer, le palais Ines dispose de deux salles : L’une de 500 m2 pouvant reçevoir jusqu’à 300 personnes et l’autre de 300 m2 pouvant acceuillir jusqu’à 180 personnes. Malgré son ouverture récente beaucoup d’institutions professionnelles ont déjà fait appel au Palais d’Ines pour y organiser leurs rencontres.",
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
