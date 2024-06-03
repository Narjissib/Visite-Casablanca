import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:vs/screens/DetailPages/Anfaplace/DetailPage7.dart';
import 'package:vs/screens/DetailPages/Hassan2/DetailPage8.dart';
import 'package:vs/screens/DetailPages/Kasbah/DetailPage6.dart';
import 'package:vs/screens/DetailPages/Place_Mohamed5/DetailPage3.dart';
import 'package:vs/screens/DetailPages/RoyalGolfAnfa/DetailPage2.dart';
import 'package:vs/screens/DetailPages/Sindibad/DetailPage4.dart';
import 'package:vs/screens/DetailPages/Sqala/DetailPage5.dart';
import '../../../size_config.dart';
import '../../DetailPages/VGK/DetailPage1.dart';
import 'package:vs/screens/CategorieCard/ou_aller_card/ou_aller.dart';
import 'package:vs/screens/CategorieCard/que_faie_card/que_faire.dart';




class HomePage extends StatelessWidget {
  const HomePage({super.key});
  static String routeName = "/Homep";

  @override
  Widget build(BuildContext context) {
   List<String> texts = [
  "VGK",
  "Royal Golf Anfa",
  "Place Mohammed 5",
  "ParcSindibad",
  "La sqala",
  "Kasbah de Boulaaouan",
  "Anfa Place",
  "Mosquée Hassan 2",
];
    User? user = FirebaseAuth.instance.currentUser;

    void navigateToDetailPage(BuildContext context, int index) {
  // Naviguer vers la page de détails correspondante en fonction de l'index
  switch (index) {
    case 0:
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => DetailPage1()),
      );
      break;
    case 1:
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => DetailPage2()),
      );
      break;
    case 2:
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => DetailPage3()),
      );
      break;
    case 3:
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => DetailPage4()),
      );
      break;
    case 4:
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => DetailPage5()),
      );
      break;
    case 5:
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => DetailPage6()),
      );
      break;
    case 6:
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => DetailPage7()),
      );
      break;
    case 7:
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => DetailPage8()),
      );
      break;
    default:
      // Vous pouvez ajouter une action par défaut si besoin
      break;
  }
}


    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.only(left: 20),
                child: Row(
                  children: [
                    Text(
                      "Bonjour,",
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                      ),
                      textAlign: TextAlign.left,
                    ),
                    if (user != null)
                      Text(
                        user.email!,
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                  ],
                ),
              ),
              if (user == null)
                Text(
                  "Utilisateur non connecté",
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              SizedBox(height: getProportionateScreenHeight(20)),

              Row(
                children: [
                  Expanded(
                    child: Container(
                      height: 300,
                      width: 650,
                      child: ListView.builder(
                        itemCount: 8,
                        scrollDirection: Axis.horizontal,
                        shrinkWrap: true,
                        itemBuilder: (BuildContext context, int index) {
                          return InkWell(
                            onTap: () {
                              navigateToDetailPage(context, index);
                            },
                            child: Stack(
                              children: [
                                Container(
                                  width: 350,
                                  height: 400,
                                  padding: EdgeInsets.all(20),
                                  margin: EdgeInsets.only(left: 15),
                                  decoration: BoxDecoration(
                                    color: Colors.black,
                                    borderRadius: BorderRadius.circular(15),
                                    image: DecorationImage(
                                      image: AssetImage("assets/imgs/Casablanca${index + 1}.jpg"),
                                      fit: BoxFit.cover,
                                      opacity: 0.7,
                                    ),
                                  ),
                                ),
                                Positioned(
                                  left: 20,
                                  bottom: 20,
                                  child: Text(
                                    texts[index],
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                                Positioned(
                                  top: 10,
                                  right: 10,
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
                              ],
                            ),
                          );
                        },
                      ),
                    ),
                  ),
                ],
              ),

              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Container(
                  height: 70,
                  child: SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          CategorieCard(
            press: () {
              Navigator.of(context).pushNamed(oualler.routeName);
            },
            image: "assets/imgs/icons77.png",
            title: "Où aller à Casablanca ?",
          ),
          CategorieCard(
            press: () {
                Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => const quefaire(),
                ),
              );            },
            image: "assets/imgs/icons9.png",
            title: "Que faire à Casablanca ?",
          ),
        ],
      ),
    ),
  ),

              ),
            Padding(
  padding: EdgeInsets.only(left: 20),
  child: Text(
    """
Actuelle vitrine économique du Royaume du Maroc, Casablanca reflète à la fois la modernité et le côté
« occidental » du pays, mais qu’en est-il de son histoire ? De ses origines à l'invasion portugaise en
passant par la colonisation française, Made in Casablanca remonte le temps et vous retrace 
l’incroyable histoire de la “ville blanche”.""",
    style: TextStyle(
      fontSize: 16,
      color: Colors.black,
      fontWeight: FontWeight.w500,
    ),
  ),
),
SizedBox(height: getProportionateScreenHeight(10)),
Padding(
  padding: EdgeInsets.only(left: 20),
  child: Text(
    "L'histoire de Casablanca",
    style: TextStyle(
      fontSize: 24,
      color: Color.fromARGB(223, 35, 42, 39),
      fontWeight: FontWeight.bold,
    ),
  ),
),
SizedBox(height: getProportionateScreenHeight(10)),
Padding(
  padding: EdgeInsets.only(left: 20),
  child: Text(
    """
L’histoire commence à Anfa, une ville antique connue pour son agriculture et son port de pêcheurs actif,
dont ses origines demeurent un vrai mystère. On ne sait toujours pas qui des Phéniciens, 
des Carthaginois,des Romains ou des Berbères, édifia réellement Anfa. Toutefois, la quiétude de la ville fut bouleversée en 1469, lorsque le Roi du Portugal 
attaqua la ville pour répondre aux pillages commis par les habitants d’Anfa sur ses navires marchands. Face à cette invasion, les habitants d’Anfa abandonnèrent
la ville et la laissèrent inhabitée durant trois siècles.""",
    style: TextStyle(
      fontSize: 16,
      color: Colors.black,
      fontWeight: FontWeight.w500,
    ),
  ),
),
Padding(
  padding: EdgeInsets.all( 20),

  child:   Container(
    width: 400,
    height: 200,
    decoration: BoxDecoration(
      image: DecorationImage(
        image: AssetImage("assets/imgs/téléchargement.jpeg"),
        fit: BoxFit.cover,
  
      ),
  
    ),
  
  ),
),
Padding(
  padding: EdgeInsets.only(left: 20),
  child: Text(
    """
C’est le Sultan Alaouite Sidi Mohamed Ben Abdellah (1757-1790), qui va reconstruire et fortifier la
ville alors en ruine. Peu à peu, les berbères peuplèrent la ville et la baptisèrent Dar el Beida qui signifie maison blanche en arabe. Mais c’est la traduction Espagnol “Casa blanca” qui va retenir la ville l’attention.""",
    style: TextStyle(
      fontSize: 16,
      color: Colors.black,
      fontWeight: FontWeight.w500,
    ),
  ),
),
SizedBox(height: getProportionateScreenHeight(10)),


            ],
          ),
        ),
      ),
    );
  }
}

class CategorieCard extends StatelessWidget {
  final String title, image;
  final VoidCallback press;

  const CategorieCard({
    super.key,
    required this.title,
    required this.image,
    required this.press,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 20),
      child: InkWell(
        onTap: press,
        child: Material(
          elevation: 5,
          borderRadius: BorderRadius.circular(100),
          child: Container(
            height: 55,
            decoration: BoxDecoration(
              color: Color.fromARGB(255, 255, 255, 255),
              borderRadius: BorderRadius.circular(100),
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 8.0),
              child: Row(
                children: [
                  CircleAvatar(
                    backgroundColor: Colors.white,
                    backgroundImage: AssetImage(image),
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  Text(
                    title,
                    style: const TextStyle(color: Colors.black, fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}




