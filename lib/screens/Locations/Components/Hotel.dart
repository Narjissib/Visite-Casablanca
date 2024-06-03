import 'package:flutter/material.dart';
import 'package:vs/screens/Locations/HotelPages/Hotel1/Detailhotel.dart';
import 'package:vs/screens/Locations/HotelPages/Hotel2/Detailhotel2.dart';
import 'package:vs/screens/Locations/HotelPages/Hotel3/Detailhotel3.dart';
import 'package:vs/screens/Locations/HotelPages/Hotel4/Detailhotel4.dart';
import 'package:vs/screens/Locations/HotelPages/Hotel5/Detailhotel5.dart';
import 'package:vs/screens/Locations/HotelPages/Hotel6/Detailhotel6.dart';
import 'package:vs/screens/Locations/HotelPages/Hotel7/Detailhotel7.dart';
import 'package:vs/screens/Locations/HotelPages/Hotel8/Detailhotel8.dart';
import 'package:vs/screens/Locations/HotelPages/Hotel9/Detailhotel9.dart';
import 'package:vs/screens/Locations/HotelPages/Hotel10/Detailhotel10.dart';

class Hotels extends StatelessWidget {
  const Hotels({Key? key});

  @override
  Widget build(BuildContext context) {
    List<Hotel> allHotels = [...hotels._Hotel1, ...hotels._Hotel2, ...hotels._Hotel3,...hotels._Hotel4,...hotels._Hotel5,...hotels._Hotel6,...hotels._Hotel7,...hotels._Hotel8,...hotels._Hotel9,...hotels._Hotel10];

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            ListView.builder(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemCount: allHotels.length,
              itemBuilder: (BuildContext context, int index) {
                Hotel hotel = allHotels[index];
                return Container(
                  margin: EdgeInsets.symmetric(vertical: 10.0),
                  child: ListTile(
                    leading: ClipRRect(
                      borderRadius: BorderRadius.circular(20.0),
                      child: Image.asset(
                        hotel.imageUrl,
                        width: 90.0,
                        height: 90.0,
                        fit: BoxFit.cover,
                      ),
                    ),
                    title: Text(
                      hotel.name,
                      style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
                    ),
                    subtitle: Row(
                      children: [
                        Icon(Icons.star, color: Colors.amber, size: 16),
                        Text(
                          hotel.starRating.toString(),
                          style: TextStyle(fontSize: 16.0),
                        ),
                        SizedBox(width: 10),
                        Text(
                          '${hotel.price.toStringAsFixed(2)} \MAD',
                          style: TextStyle(fontSize: 16.0),
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


                    },
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }}
class Hotel {
  final String name;
  final double price;
  final double starRating;
  final String imageUrl;

  Hotel({
    required this.name,
    required this.price,
    required this.starRating,
    required this.imageUrl,
  });
}

class hotels {
  static final List<Hotel> _Hotel1 = [
    Hotel(
      name: "Aparthotel Adagio Casablanca City Center",
      price: 859.0,
      starRating: 4.3,
      imageUrl: "assets/imgs/hotel1.jpg",
    ),
  ];
   static final List<Hotel> _Hotel2 = [
    Hotel(
      name: "Avanti Beach Hotel ",
      price: 1380.0,
      starRating: 4,
      imageUrl: "assets/imgs/hotel2.jpg",
    ),
  ];
   static final List<Hotel> _Hotel3 = [
    Hotel(
      name: "BARCELO ANFA CASABLANCA",
      price: 1402.0,
      starRating: 4,
      imageUrl: "assets/imgs/hotel3.jpg",
    ),
  ];
    static final List<Hotel> _Hotel4 = [
    Hotel(
      name: "Hôtel Casablanca Le Lido Thalasso & SPA",
      price: 1088.0,
      starRating: 4,
      imageUrl: "assets/imgs/hotel4.jpg",
    ),
  ];
   static final List<Hotel> _Hotel5 = [
    Hotel(
      name: "CASABLANCA SOFITEL TOUR BLANCHE",
      price: 1539.0,
      starRating: 4.6,
      imageUrl: "assets/imgs/hotel5.jpg",
    ),
  ];
   static final List<Hotel> _Hotel6 = [
    Hotel(
      name: "FOUR SEASONS HOTEL CASABLANCA",
      price: 4575.0,
      starRating: 4.6,
      imageUrl: "assets/imgs/hotel6.jpg",
    ),
  ];
   static final List<Hotel> _Hotel7 = [
    Hotel(
      name: "CHÂTEAU EDEN EL ROUH",
      price: 3134.0,
      starRating: 4.0,
      imageUrl: "assets/imgs/hotel7.jpg",
    ),
  ];
  static final List<Hotel> _Hotel8 = [
    Hotel(
      name: "HOTEL IDOU ANFA & SPA",
      price: 1060.0,
      starRating: 4.0,
      imageUrl: "assets/imgs/hotel8.jpg",
    ),
  ];
   static final List<Hotel> _Hotel9 = [
    Hotel(
      name: "Best Western Plus Hotel Casablanca City Center",
      price: 858.0,
      starRating: 3.4,
      imageUrl: "assets/imgs/hotel9.webp",
    ),
  ];
   static final List<Hotel> _Hotel10 = [
    Hotel(
      name: "Oum Palace Hotel & Spa",
      price: 886.0,
      starRating: 3.8,
      imageUrl: "assets/imgs/hotel10.jpg",
    ),
  ];
}
