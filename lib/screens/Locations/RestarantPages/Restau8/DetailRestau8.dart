import 'package:flutter/material.dart';
import 'package:vs/screens/Locations/HotelPages/Hotel8/hotel8.dart';
import 'package:vs/screens/Locations/RestarantPages/Restau8/Restau8.dart';
import 'package:vs/screens/post_app_bar.dart';
class DetailPage8 extends StatelessWidget {

  // ignore: use_key_in_widget_constructors

   @override
  Widget build(BuildContext context) {
     return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/imgs/Restau8_4.jpg'),
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
          bottomNavigationBar: Restau8(),

      ),
    );
  }
}