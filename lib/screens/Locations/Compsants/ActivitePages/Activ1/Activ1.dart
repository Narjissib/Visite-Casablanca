import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:vs/screens/Locations/Compsants/ActivitePages/Activ1/DetailActiv1.dart';
class Activ1 extends StatelessWidget {
  const Activ1({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height / 1.8,
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
                      MaterialPageRoute(builder: (context) => DetailPage1()),
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
                          "PARC ART NATURE FORET DE BOUSKOURA CASABLANCA",
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
                      "Accrobranche Casablanca",
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
                          "3.8",
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
                      "+212767399066", // Replace this with the actual phone number
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 10),
                Text(
                  "Le Parc Art nature est un parc de loisirs à Bouskoura idéalement situé entre deux merveilleuses forêts à 10 minutes de Casablanca. S’étalant sur un site de 4 hectares le complexe parmis d’autres activités deux circuits accrobranche surprenants.L’accrobranche est une activité bien adaptéeé pour renforcer les liens dans un groupe.En effet, c’est une activité qui demande de la motivation et le dépassement de soi. et si dans un groupe les parcours d’aventures ne font pas peur à certains ,pour d’autres cela demande un véritable effort.Hors dans le cadre d’un team-building c’est toute l’équipe qui doit arriver à terminer le parcours.",
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
                            'assets/imgs/Activ1_4.jpg',
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
                            'assets/imgs/Activ1_2.jpg',
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
                            'assets/imgs/Activ1_3.jpg',
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
