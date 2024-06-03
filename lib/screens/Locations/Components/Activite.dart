import 'package:flutter/material.dart';
import 'package:vs/screens/Locations/Compsants/ActivitePages/Activ1/DetailActiv1.dart';
import 'package:vs/screens/Locations/Compsants/ActivitePages/Activ2/DetailActiv2.dart';
import 'package:vs/screens/Locations/Compsants/ActivitePages/Activ3/DetailActiv3.dart';
import 'package:vs/screens/Locations/Compsants/ActivitePages/Activ4/DetailActiv4.dart';
import 'package:vs/screens/Locations/Compsants/ActivitePages/Activ5/DetailActiv5.dart';
import 'package:vs/screens/Locations/Compsants/ActivitePages/Activ6/DetailActiv6.dart';

class Activite extends StatelessWidget {
  const Activite({super.key});

  @override
  Widget build(BuildContext context) {
    List<Activ> allActiv = [...Activs._Activ1,...Activs._Activ2,...Activs._Activ3,...Activs._Activ4,...Activs._Activ5,...Activs._Activ6,];

    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(top: 30.0), // Add space from top
          child: Column(
            children: [
              ListView.builder(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemCount: allActiv.length,
                itemBuilder: (BuildContext context, int index) {
                  Activ Activite = allActiv[index];
                  return Container(
                    margin: EdgeInsets.symmetric(vertical: 10.0),
                    child: ListTile(
                      leading: Padding(
                        padding: EdgeInsets.only(right: 10.0), // Add space to the right
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(20.0),
                          child: Image.asset(
                            Activite.imageUrl,
                            width: 90.0,
                            height: 90.0,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      title: Text(
                        Activite.name,
                        style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
                      ),
                      subtitle: Column( // Use Column instead of Row
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Icon(Icons.star, color: Colors.amber, size: 16),
                              Text(
                                Activite.starRating.toString(),
                                style: TextStyle(fontSize: 16.0),
                              ),
                              SizedBox(width: 10),
                            ],
                          ),
                          
                        ],
                      ),
                      onTap: () {
                        if(index==0){
                         Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => DetailPage1(),
                          ),
                        );
                      } 
                      if(index==1){
                         Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => DetailPage2(),
                          ),
                        );
                      } if(index==2){
                         Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => DetailPage3(),
                          ),
                        );
                      } if(index==3){
                         Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => DetailPage4(),
                          ),
                        );
                      } if(index==4){
                         Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => DetailPage5(),
                          ),
                        );
                      } if(index==5){
                         Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => DetailPage6(),
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
class Activ {
  final String name;
  final double starRating;
  final String imageUrl;

  Activ({
    required this.name,
    required this.starRating,
    required this.imageUrl,
  });
}
class Activs {
  static final List<Activ> _Activ1 = [
    Activ(
      name: "Accrobranche Casablanca",
      starRating: 3.8,
      imageUrl: "assets/imgs/actvite1.jpg",
    ),
  ];
  static final List<Activ> _Activ2 = [
    Activ(
      name: "Patinoire morocco mall - Casablanca",
      starRating: 4.2,
      imageUrl: "assets/imgs/actvite2.jpg",
    ),
  ];
  static final List<Activ> _Activ3 = [
    Activ(
      name: "The Escape Hunt Experience",
      starRating: 4.7,
      imageUrl: "assets/imgs/actvite3.jpg",
    ),
  ];
  static final List<Activ> _Activ4 = [
    Activ(
      name: "Tamaris Bowling",
      starRating: 4.2,
      imageUrl: "assets/imgs/actvite4.jpg",
    ),
  ];
  static final List<Activ> _Activ5 = [
    Activ(
      name: "Adventureland Maroc",
      starRating: 3.4,
      imageUrl: "assets/imgs/actvite5.jpg",
    ),
  ];
    static final List<Activ> _Activ6 = [
    Activ(
      name: "Sindibad Karting",
      starRating: 3.8,
      imageUrl: "assets/imgs/actvite6.jpg",
    ),
  ];
   
  
}
