import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:vs/screens/Locations/EventPages/Event7/DetailEvent7.dart';
class Event7 extends StatelessWidget {
  const Event7({super.key});

   @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height / 2.4,
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
                      MaterialPageRoute(builder: (context) => DetailPage7()),
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
                          "Anfa place espace promenade - Casablanca",
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
                      "WeMeet - Smart Meeting Rooms",
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
                          "4.7",
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
                      "+212636070404", // Replace this with the actual phone number
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 10),
                Text(
                "Situé en bord de mer dans le cadre moderne et élégant du Anfa Place shopping et living resort en bord de mer ,WEMEET est un ensemble de Smart Meeting Rooms résolument moderne à la décoration « trendy » avec des espaces lumineux et agréables disposant d’un accès direct sur la promenade face à la plage aménagée.Le catering y est assuré avec de de différentes formules adaptées à vos besoins.Le complexe Anfa Living Resort dispose d’un immense parking sous-terrain ou les convives trouveront sans doute une place à l’abri du soleil.L’ensemble couvre de 2400m2.",
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