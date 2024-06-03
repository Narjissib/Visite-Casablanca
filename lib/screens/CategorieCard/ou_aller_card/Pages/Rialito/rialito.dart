import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:vs/screens/CategorieCard/ou_aller_card/Pages/Rialito/DetailPage10.dart';
class rialito extends StatelessWidget {
  const rialito({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height / 1.6,
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
                          " 35 Rue Mohammed El Qori, Quartier Horloge, Casablanca 20000 Maroc.",
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
                      "Rialito",
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
                          "4.0",
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
                      "+212634750983", // Replace this with the actual phone number
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    
                  ],
                ),
                SizedBox(height: 10),
                Text(
"Situé en plein boulevard Mohammed V, l’édifice ne passe pas inaperçu : sa coupole qui s’élève à 14 mètres de hauteur et son balcon immense en font un lieu unique. Conçu par l'architecte Pierre Jabin, le Rialto est un emblème architectural du courant Art déco, et constitue une pièce supplémentaire dans le grand puzzle du centre-ville de Casablanca, véritable musée à ciel ouvert. Donnez-vous le plaisir de vous émerveiller lorsque vous pénétrez l’enceinte du cinéma où les affiches accrochées aux murs témoignent d'un passé glorieux. Chet Baker, Édith Piaf, Charles Aznavour et bien d'autres vedettes internationales et locales ont rempli ce cinéma qui jadis était également un théâtre et une salle de concert. Toutes les grandes compagnies marocaines de théâtre s’y sont produites, grâce à sa salle qui peut accueillir jusqu'à 1 350 spectateurs.",              
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
                            'assets/imgs/rialito3.jpg',
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
                            'assets/imgs/rialito1.jpg',
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
                            'assets/imgs/rialito4.jpg',
                            fit: BoxFit.cover,
                            width: 120,
                            height: 100,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
