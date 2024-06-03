import 'package:flutter/material.dart';
import 'package:vs/screens/Locations/RestarantPages/Restau10/DetailRestau10.dart';
import 'package:vs/screens/Locations/RestarantPages/Restau4/DetailRestau4.dart';
import 'package:vs/screens/Locations/RestarantPages/Restau1/DetailRestau1.dart';
import 'package:vs/screens/Locations/RestarantPages/Restau2/DetailRestau2.dart';
import 'package:vs/screens/Locations/RestarantPages/Restau3/DetailRestau3.dart';
import 'package:vs/screens/Locations/RestarantPages/Restau5/DetailRestau5.dart';
import 'package:vs/screens/Locations/RestarantPages/Restau6/DetailRestau6.dart';
import 'package:vs/screens/Locations/RestarantPages/Restau7/DetailRestau7.dart';
import 'package:vs/screens/Locations/RestarantPages/Restau8/DetailRestau8.dart';
import 'package:vs/screens/Locations/RestarantPages/Restau9/DetailRestau9.dart';

class Restaurant extends StatelessWidget {
  const Restaurant({Key? key});

  @override
  Widget build(BuildContext context) {
    List<Restauran> allRest = [...Restaurants._Restaurant1,...Restaurants._Restaurant2,...Restaurants._Restaurant3,...Restaurants._Restaurant4,...Restaurants._Restaurant5,...Restaurants._Restaurant6,...Restaurants._Restaurant7,...Restaurants._Restaurant8,...Restaurants._Restaurant9,...Restaurants._Restaurant10];

    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(top: 30.0), // Add space from top
          child: Column(
            children: [
              ListView.builder(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemCount: allRest.length,
                itemBuilder: (BuildContext context, int index) {
                  Restauran Res = allRest[index];
                  return Container(
                    margin: EdgeInsets.symmetric(vertical: 10.0),
                    child: ListTile(
                      leading: Padding(
                        padding: EdgeInsets.only(right: 10.0), // Add space to the right
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(20.0),
                          child: Image.asset(
                            Res.imageUrl,
                            width: 90.0,
                            height: 90.0,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      title: Text(
                        Res.name,
                        style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
                      ),
                      subtitle: Column( // Use Column instead of Row
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Icon(Icons.star, color: Colors.amber, size: 16),
                              Text(
                                Res.starRating.toString(),
                                style: TextStyle(fontSize: 16.0),
                              ),
                              SizedBox(width: 10),
                            ],
                          ),
                          Text(
                            Res.specialite,
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
                            builder: (context) => DetailPage7(),
                          ),
                        );
                      } 
                        if (index == 6) {
                        
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => DetailPage6(),
                          ),
                        );
                      } 
                      if (index == 7) {
                        
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => DetailPage8(),
                          ),
                        );
                      } 
                      if (index == 8) {
                        
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => DetailPage9(),
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
                       
                       } 

                       

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

class Restauran {
  final String name;
  final String specialite;
  final double starRating;
  final String imageUrl;

  Restauran({
    required this.name,
    required this.specialite,
    required this.starRating,
    required this.imageUrl,
  });
}

class Restaurants {
  static final List<Restauran> _Restaurant1 = [
    Restauran(
      name: "A Ma Bretagne",
      specialite: "Française,Méditerranéenne,Européenne",
      starRating: 3.5,
      imageUrl: "assets/imgs/Restau1.jpg",
    ),
  ];
  static final List<Restauran> _Restaurant2 = [
    Restauran(
      name: "Restaurant El Gousto",
      specialite: "Italienne,Fruits de mer & Poisson,Méditerranéenne",
      starRating: 4.5,
      imageUrl: "assets/imgs/Restau2.jpg",
    ),
  ];
  static final List<Restauran> _Restaurant3 = [
    Restauran(
      name: "Restaurant Dar El Kaid",
      specialite: "Marocaine,Méditerranéenne",
      starRating: 4.5,
      imageUrl: "assets/imgs/Restau3.jpg",
    ),
  ];
  static final List<Restauran> _Restaurant4 = [
    Restauran(
      name: "Iloli",
      specialite: "Japonaise,Sushi,Asiatique",
      starRating: 4.2,
      imageUrl: "assets/imgs/Restau4.jpg",
    ),
  ];
   static final List<Restauran> _Restaurant5 = [
    Restauran(
      name: "Casa Jose Tamaris",
      specialite: " BRASSERIE ESPAGNOLE",
      starRating: 3.3,
      imageUrl: "assets/imgs/Restau5.jpg",
    ),
  ];
  
   static final List<Restauran> _Restaurant6 = [
    Restauran(
      name: "La Scala",
      specialite: " Marocaine,Méditerranéenne,Moyen-Orient",
      starRating: 4.0,
      imageUrl: "assets/imgs/Restau6.jpg",
    ),
  ];
  static final List<Restauran> _Restaurant7 = [
    Restauran(
      name: "SKY 28",
      specialite: " CUISINE INTERNATIONALE",
      starRating: 4.0,
      imageUrl: "assets/imgs/Restau7.jpg",
    ),
  ];
    static final List<Restauran> _Restaurant8 = [
    Restauran(
      name: "Sel de Mer",
      specialite: " Seafood",
      starRating: 4.5,
      imageUrl: "assets/imgs/Restau8.jpg",
    ),
  ];
  static final List<Restauran> _Restaurant9 = [
    Restauran(
      name: "Holy Brunch",
      specialite: "Café,Internationale,Européenne,Fusion",
      starRating: 4.5,
      imageUrl: "assets/imgs/Restau9.jpg",
    ),
  ];
   static final List<Restauran> _Restaurant10 = [
    Restauran(
      name: "Churrascaria Marius Casablanca",
      specialite: "Steakhouse,Brésilienne,Latino",
      starRating: 4.0,
      imageUrl: "assets/imgs/Restau10.jpg",
    ),
  ];
}
