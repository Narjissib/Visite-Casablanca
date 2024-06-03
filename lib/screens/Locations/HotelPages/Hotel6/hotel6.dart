import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:vs/screens/Locations/HotelPages/Hotel6/Detailhotel6.dart';
class Hotel6 extends StatelessWidget {
  const Hotel6({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height / 1.75,
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
                      MaterialPageRoute(builder: (context) => DetailPage6()),
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
                          "ANFA PLACE LIVING RESORT BOULEVARD DE LA CORNICHE, CASABLANCA, 20050 MOROCCO",
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
                      "Four Seasons Hotel Casablanca",
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
                      "+212529073800 ", // Replace this with the actual phone number
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    
                  ],
                ),
                SizedBox(height: 10),
                Text(
                  "Baigné par la lumière du soleil, entouré de paysages et le glamour du lifestyle en bord de mer. Une bouffée d’air frais dans la capitale économique du Royaume. À seulement 10 minutes du centre ville et des quartiers des affaires. Profiter de la douce brise marine sur votre terrasse ou dans le confort de votre chambre et laisser-vous bercer par le déferlement paisible des vagues. Alliant élégance contemporaine et traditions marocaines, découvrez l'architecture exceptionnelle de la Ville Blanche. Admirez l'évoluante scène artistique et gastronomique. Profitez du meilleur de la ville portuaire par excellence et dégustez un plateau de fruits de mer fraîchement pêchés « à la minute » au restaurant Bleu.",
                  style: GoogleFonts.robotoSlab(
                    textStyle: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
                SizedBox(height: 10),
                // Solution 1: Utiliser Expanded pour chaque image
                Row(
                  children: [
                    Expanded(
                      child: Padding(
                        padding: EdgeInsets.only(right: 5),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(15),
                          child: Image.asset(
                            'assets/imgs/Hotel6_1.jpg',
                            fit: BoxFit.cover,
                            width: 120,
                            height: 100,
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Padding(
                        padding: EdgeInsets.only(right: 5),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(15),
                          child: Image.asset(
                            'assets/imgs/Hotel6_3.jpg',
                            fit: BoxFit.cover,
                            width: 120,
                            height: 100,
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Padding(
                        padding: EdgeInsets.only(right: 5),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(15),
                          child: Image.asset(
                            'assets/imgs/Hotel6_2.jpg',
                            fit: BoxFit.cover,
                            width: 120,
                            height: 100,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),

                // Solution 2: Utiliser un ListView horizontal
                // ListView(
                //   scrollDirection: Axis.horizontal,
                //   children: [
                //     Padding(...),
                //     Padding(...),
                //     Padding(...),
                //   ],
                // ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
