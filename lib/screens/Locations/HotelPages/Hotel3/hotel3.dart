import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:vs/screens/Locations/HotelPages/Hotel1/Detailhotel.dart';
import 'package:vs/screens/Locations/HotelPages/Hotel2/Detailhotel2.dart';
import 'package:vs/screens/Locations/HotelPages/Hotel3/Detailhotel3.dart';
class Hotel3 extends StatelessWidget {
  const Hotel3({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height / 1.9,
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
                      MaterialPageRoute(builder: (context) => DetailPage3()),
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
                          "44 Boulevard d'Anfa, Sidi Belyout, 20000 Casablanca, Maroc ",
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
                      "Barceló Anfa Casablanca ",
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
                          "4",
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
                      "+212520009000 ", // Replace this with the actual phone number
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(width: 10), // Add some space between phone and email icons
                    Icon(
                      Icons.email,
                      size: 15,
                      color: Colors.black,
                    ),
                    SizedBox(width: 5),
                    Text(
                      "anfacasablanca.res@barcelo.com", // Replace this with the actual email address
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 10),
                Text(
                  "Situé à Casablanca, à 3,8 km du complexe immobilier Anfa Place Living Resort, l’établissement Barceló Anfa Casablanca dispose d’une salle de sport, d’une piscine extérieure, d’un parking privé gratuit et d’un salon commun. Cet hôtel 5 étoiles propose une terrasse ainsi que des chambres dotées de la climatisation, d’une salle de bains privative ainsi que d’une connexion Wi-Fi gratuite. Vous pourrez déguster des plats français et méditerranéens au restaurant ou prendre un cocktail au bar.",
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
                            'assets/imgs/Hotel3_1.jpg',
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
                            'assets/imgs/Hotel3_2.jpg',
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
                            'assets/imgs/Hotel3_3.jpg',
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
