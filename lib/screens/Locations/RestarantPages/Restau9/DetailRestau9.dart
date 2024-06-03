import 'package:flutter/material.dart';
import 'package:vs/screens/Locations/HotelPages/Hotel9/hotel9.dart';
import 'package:vs/screens/Locations/RestarantPages/Restau9/Restau9.dart';
import 'package:vs/screens/post_app_bar.dart';
class DetailPage9 extends StatelessWidget {

  // ignore: use_key_in_widget_constructors

   @override
  Widget build(BuildContext context) {
     return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/imgs/Restau9_1.jpg'),
          fit: BoxFit.cover,
          opacity: 0.7,
        ),
      ),
      child: Scaffold(
        backgroundColor:Colors.transparent,
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(90),
          child: PostAppBar(),
          ),
          bottomNavigationBar: Restau9(),

      ),
    );
  }
}