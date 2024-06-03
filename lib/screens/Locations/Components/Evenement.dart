import 'package:flutter/material.dart';
import 'package:vs/screens/Locations/EventPages/Event1/DetailEvent1.dart';
import 'package:vs/screens/Locations/EventPages/Event10/DetailEvent10.dart';
import 'package:vs/screens/Locations/EventPages/Event2/DetailEvent2.dart';
import 'package:vs/screens/Locations/EventPages/Event3/DetailEvent3.dart';
import 'package:vs/screens/Locations/EventPages/Event4/DetailEvent4.dart';
import 'package:vs/screens/Locations/EventPages/Event5/DetailEvent5.dart';
import 'package:vs/screens/Locations/EventPages/Event6/Detailhotel6.dart';
import 'package:vs/screens/Locations/EventPages/Event7/DetailEvent7.dart';
import 'package:vs/screens/Locations/EventPages/Event8/DetailEvent8.dart';
import 'package:vs/screens/Locations/EventPages/Event9/DetailEvent9.dart';
class Event extends StatelessWidget {
  const Event({super.key});

  @override
  Widget build(BuildContext context) {
    List<Evenement> allEvent = [...Evenements._Evenement1,...Evenements._Evenement2,...Evenements._Evenement3,...Evenements._Evenement4,...Evenements._Evenement5,...Evenements._Evenement6,...Evenements._Evenement7,...Evenements._Evenement8,...Evenements._Evenement9,...Evenements._Evenement10];

    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(top: 30.0), // Add space from top
          child: Column(
            children: [
              ListView.builder(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemCount: allEvent.length,
                itemBuilder: (BuildContext context, int index) {
                  Evenement Event = allEvent[index];
                  return Container(
                    margin: EdgeInsets.symmetric(vertical: 10.0),
                    child: ListTile(
                      leading: Padding(
                        padding: EdgeInsets.only(right: 10.0), // Add space to the right
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(20.0),
                          child: Image.asset(
                            Event.imageUrl,
                            width: 90.0,
                            height: 90.0,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      title: Text(
                        Event.name,
                        style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
                      ),
                      subtitle: Column( // Use Column instead of Row
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Icon(Icons.star, color: Colors.amber, size: 16),
                              Text(
                                Event.starRating.toString(),
                                style: TextStyle(fontSize: 16.0),
                              ),
                              SizedBox(width: 10),
                            ],
                          ),
                          Text(
                            Event.titre,
                            style: TextStyle(fontSize: 15.0),
                          ),
                        ],
                      ),
                      onTap: () {
                        if (index == 0) {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => DetailPage1(),
                          ),
                        );
                      } 
                       if (index == 1) {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => DetailPage2(),
                          ),
                        );
                      } 
                       if (index == 2) {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => DetailPage3(),
                          ),
                        );
                      } 
                       if (index == 3) {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => DetailPage4(),
                          ),
                        );
                      } 
                       if (index == 4) {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => DetailPage5(),
                          ),
                        );
                      } 
                       if (index == 5) {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => DetailPage6(),
                          ),
                        );
                      } 
                       if (index == 6) {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => DetailPage7(),
                          ),
                        );
                      } 
                       if (index == 7) {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => DetailPage9(),
                          ),
                        );
                      } 
                       if (index == 8) {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => DetailPage8(),
                          ),
                        );
                      } 
                       if (index == 9) {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => DetailPage10(),
                          ),
                        );
                      } 
                      },
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
class Evenement {
  final String name;
  final String titre;
  final double starRating;
  final String imageUrl;

  Evenement({
    required this.name,
    required this.titre,
    required this.starRating,
    required this.imageUrl,
  });
}
class Evenements {
  static final List<Evenement> _Evenement1 = [
    Evenement(
      name: "Victoria Palace",
      titre: "Salle et espace événementiel",
      starRating: 4.3,
      imageUrl: "assets/imgs/Event1.webp",
    ),
  ];
  static final List<Evenement> _Evenement2 = [
    Evenement(
      name: "Ferme Olea Benslimane",
      titre: "Salles Séminaires et évènements",
      starRating: 4.9,
      imageUrl: "assets/imgs/Event2.jpeg",
    ),
  ];
  static final List<Evenement> _Evenement3 = [
    Evenement(
      name: "Le Carré d'Or",
      titre: "Centre de conférence à Casablanca",
      starRating: 4.4,
      imageUrl: "assets/imgs/Event3.jpg",
    ),
  ];
  static final List<Evenement> _Evenement4 = [
    Evenement(
      name: "Le Park 18",
      titre: "Club de sport au Maroc",
      starRating: 4.3,
      imageUrl: "assets/imgs/Event4.jpg",
    ),
  ];
  static final List<Evenement> _Evenement5 = [
    Evenement(
      name: "Palais Ines Casablanca",
      titre: "Salle et espace événementie",
      starRating: 4.3,
      imageUrl: "assets/imgs/Event5.jpg",
    ),
  ];
  static final List<Evenement> _Evenement6 = [
    Evenement(
      name: "Palace Layali",
      titre: "Lieu de mariage à Bouskoura",
      starRating: 4.4,
      imageUrl: "assets/imgs/event6.jpeg",
    ),
  ];
  static final List<Evenement> _Evenement7 = [
    Evenement(
      name: "WeMeet - Smart Meeting Rooms",
      titre: "Salle de réception à Casablanca",
      starRating: 4.7,
      imageUrl: "assets/imgs/Event7.png",
    ),
  ];
  static final List<Evenement> _Evenement9 = [
    Evenement(
      name: "Palais Atlas",
      titre: "Lieu de mariage",
      starRating: 4.1,
      imageUrl: "assets/imgs/Event9.jpg",
    ),
  ];
  static final List<Evenement> _Evenement8 = [
    Evenement(
      name: "Compagnie Marocaine des Oeuvres et Objets d'Art",
      titre: "Galerie d’art Salle et espace événementiel",
      starRating: 4.5,
      imageUrl: "assets/imgs/Event8.jpg",
    ),
  ];
   static final List<Evenement> _Evenement10 = [
    Evenement(
      name: "Dar El Mandjara",
      titre: "Lieu de mariage",
      starRating: 4.1,
      imageUrl: "assets/imgs/Event10.jpg",
    ),
  ];


}