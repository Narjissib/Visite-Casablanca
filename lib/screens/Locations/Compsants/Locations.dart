import 'package:flutter/material.dart';
import 'package:vs/screens/Locations/Activite.dart';
import 'package:vs/screens/Locations/AgenceVoyage.dart';
import 'package:vs/screens/Locations/Components/Hotel.dart';
import 'package:vs/screens/Locations/Components/Restaurant.dart';
import 'package:vs/screens/Locations/EvenementPage.dart';
import 'package:vs/screens/Locations/HotelsPage.dart';

import '../RestaurantPage.dart';

class LocationPage extends StatelessWidget {
  static String routeName = "/LocationPage";

  const LocationPage({Key? key});

  @override
  Widget build(BuildContext context) {
    Lieux lieux = Lieux();
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              SizedBox(
                height: 50,
              ),
              Text(
                "Organiser votre évenement",
                style: TextStyle(
                  color: Color.fromARGB(223, 35, 42, 39),
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 50,
              ),
              // ListView pour afficher les lieux
              ListView.builder(
                shrinkWrap: true, // Permet à ListView de s'adapter à son contenu
                itemCount: lieux._locations.length,
                itemBuilder: (context, index) {
                  Lieu lieu = lieux._locations[index];

                  return Container(
                    height: 100,
                    width: 150,
                    child: ListTile(
                      leading: lieu.imagePath.isNotEmpty
                          ? Container(
                              width: 70,
                              height: 50,
                              child: Image.asset(
                                lieu.imagePath,
                                fit: BoxFit.cover,
                              ),
                            )
                          : Icon(Icons.place, size: 50, color: Colors.grey),
                      title: Text(
                        lieu.name,
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                      subtitle: InkWell(
                        onTap: () {
                   Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => HotelPage()), // Remplacez DetailPage1() par la page que vous souhaitez afficher.
                           );
                        },
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Voir les ${lieu.name}s",
                              style: TextStyle(
                                fontSize: 16,
                                decoration: TextDecoration.underline,
                                color: Color(0xFFFF7643),
                              ),
                            ),
                            Icon(Icons.arrow_forward_ios,
                                color: Color(0xFFFF7643)),
                          ],
                        ),
                      ),
                    ),
                  );
                },
              ),
                SizedBox(
                height: 25,
              ),
              // ListView pour afficher les restaurants
              ListView.builder(
                shrinkWrap: true, // Permet à ListView de s'adapter à son contenu
                itemCount: lieux._location.length,
                itemBuilder: (context, index) {
                  Lieu restaurant = lieux._location[index];

                  return Container(
                    height: 100,
                    width: 150,
                    child: ListTile(
                      leading: restaurant.imagePath.isNotEmpty
                          ? Container(
                              width: 70,
                              height: 50,
                              child: Image.asset(
                                restaurant.imagePath,
                                fit: BoxFit.cover,
                              ),
                            )
                          : Icon(Icons.place, size: 50, color: Colors.grey),
                      title: Text(
                        restaurant.name,
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                      subtitle: InkWell(
                        onTap: () {
                           Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => RestauPage()),
                           );
                        },
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Voir les ${restaurant.name}s",
                              style: TextStyle(
                                fontSize: 16,
                                decoration: TextDecoration.underline,
                                color: Color(0xFFFF7643),
                              ),
                            ),
                            Icon(Icons.arrow_forward_ios,
                                color: Color(0xFFFF7643)),
                          ],
                        ),
                      ),
                    ),
                  );
                },
              ),
                SizedBox(
                height: 25,
              ),
              // ListView pour afficher les restaurants
              ListView.builder(
                shrinkWrap: true, // Permet à ListView de s'adapter à son contenu
                itemCount: lieux._lcation.length,
                itemBuilder: (context, index) {
                  Lieu lieu = lieux._lcation[index];

                  return Container(
                    height: 100,
                    width: 150,
                    child: ListTile(
                      leading: lieu.imagePath.isNotEmpty
                          ? Container(
                              width: 70,
                              height: 50,
                              child: Image.asset(
                                lieu.imagePath,
                                fit: BoxFit.cover,
                              ),
                            )
                          : Icon(Icons.place, size: 50, color: Colors.grey),
                      title: Text(
                        lieu.name,
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                      subtitle: InkWell(
                        onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => EventPage()),
                           );   
                          },
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Voir les ${lieu.name}s",
                              style: TextStyle(
                                fontSize: 16,
                                decoration: TextDecoration.underline,
                                color: Color(0xFFFF7643),
                              ),
                            ),
                            Icon(Icons.arrow_forward_ios,
                                color: Color(0xFFFF7643)),
                          ],
                        ),
                      ),
                    ),
                  );
                },
              ),
               SizedBox(
                height: 25,
              ),
              // ListView pour afficher les restaurants
              ListView.builder(
                shrinkWrap: true, // Permet à ListView de s'adapter à son contenu
                itemCount: lieux._loocation.length,
                itemBuilder: (context, index) {
                  Lieu activ = lieux._loocation[index];

                  return Container(
                    height: 100,
                    width: 150,
                    child: ListTile(
                      leading: activ.imagePath.isNotEmpty
                          ? Container(
                              width: 70,
                              height: 50,
                              child: Image.asset(
                                activ.imagePath,
                                fit: BoxFit.cover,
                              ),
                            )
                          : Icon(Icons.place, size: 50, color: Colors.grey),
                      title: Text(
                        activ.name,
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                      subtitle: InkWell(
                        onTap: () {
                       Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => ActivitePage()),
                           );                           },
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Voir les ${activ.name}s",
                              style: TextStyle(
                                fontSize: 16,
                                decoration: TextDecoration.underline,
                                color: Color(0xFFFF7643),
                              ),
                            ),
                            Icon(Icons.arrow_forward_ios,
                                color: Color(0xFFFF7643)),
                          ],
                        ),
                      ),
                    ),
                  );
                },
              ),
               SizedBox(
                height: 25,
              ),
              // ListView pour afficher les restaurants
              ListView.builder(
                shrinkWrap: true, // Permet à ListView de s'adapter à son contenu
                itemCount: lieux._loocatio.length,
                itemBuilder: (context, index) {
                  Lieu activ = lieux._loocatio[index];

                  return Container(
                    height: 100,
                    width: 150,
                    child: ListTile(
                      leading: activ.imagePath.isNotEmpty
                          ? Container(
                              width: 70,
                              height: 50,
                              child: Image.asset(
                                activ.imagePath,
                                fit: BoxFit.cover,
                              ),
                            )
                          : Icon(Icons.place, size: 50, color: Colors.grey),
                      title: Text(
                        activ.name,
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                      subtitle: InkWell(
                        onTap: () {
                        Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => AgencePage()),
                           );                             },
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Voir les ${activ.name}s",
                              style: TextStyle(
                                fontSize: 16,
                                decoration: TextDecoration.underline,
                                color: Color(0xFFFF7643),
                              ),
                            ),
                            Icon(Icons.arrow_forward_ios,
                                color: Color(0xFFFF7643)),
                          ],
                        ),
                      ),
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

class Lieu {
  final String name;
  final String imagePath;

  Lieu({required this.name, required this.imagePath});
}

class Lieux {
  final List<Lieu> _locations = [
    Lieu(
      name: "Hotel",
      imagePath: "assets/imgs/ht.png",
    ),
  ];

  final List<Lieu> _location = [
    Lieu(
      name: "Restaurant",
      imagePath: "assets/imgs/rss.png",
    ),
  ];
  final List<Lieu> _lcation = [
    Lieu(
      name: "Lieu d'événement",
      imagePath: "assets/imgs/li.png",
    ),
  ];
   final List<Lieu> _loocation = [
    Lieu(
      name: "Activité",
      imagePath: "assets/imgs/act.png",
    ),
  ];
   final List<Lieu> _loocatio = [
    Lieu(
      name: "Agence de voyage",
      imagePath: "assets/imgs/agc.png",
    ),
  ];
}
