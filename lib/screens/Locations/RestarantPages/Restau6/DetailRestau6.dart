import 'package:flutter/material.dart';
import 'package:vs/screens/Locations/HotelPages/Hotel6/hotel6.dart';
import 'package:vs/screens/Locations/RestarantPages/Restau6/Rstau6.dart';
import 'package:vs/screens/post_app_bar.dart';
class DetailPage6 extends StatelessWidget {

  // ignore: use_key_in_widget_constructors

   @override
  Widget build(BuildContext context) {
     return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/imgs/Restau6_2.jpg'),
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
          bottomNavigationBar: Restau6(),

      ),
    );
  }
}