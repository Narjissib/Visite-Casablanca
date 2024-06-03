import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:vs/screens/Locations/EventPages/Event10/DetailEvent10.dart';
class Event10 extends StatelessWidget {
  const Event10({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height / 3,
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
                      MaterialPageRoute(builder: (context) => DetailPage10()),
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
                          "F928+4F2, Bouskoura",
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
                      "Dar El Mandjra",
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
                          "4.1",
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
                      "+212664042245", // Replace this with the actual phone number
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 10),
                Text(
                  "Bâti sur une grande surface dans un endroit stratégique et accessible, Dar Elmandjra est une salle de luxe doté d’une décoration occidental pour organiser vos fêtes spéciales. Pour vos : Mariages Fiançailles... vos fêtes familiales en général, vous bénéficierez d’un espace climatisé avec une capacité énorme allant jusqu’à 500 invités avec une possibilité de séparation H/F. Si vous avez un événement professionnel, nous avons pour vous le nécessaire pour le réussir. Dar ELmandjra vous propose une multitude de services technique, depuis la couverture Wi-Fi à haut débit, jusqu’au tableau de papier cartonné, passant par la mise à votre disposition d’un vidéo projecteur à haute résolution. Que ce soit un événement particulier ou professionnel, Dar ELmandjra a préparé les services qui vont avec, n’hésitez pas à nous contacter, nous travaillerons ensemble pour le réussir",
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