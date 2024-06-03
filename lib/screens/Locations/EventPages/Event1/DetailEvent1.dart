import 'package:flutter/material.dart';
import 'package:vs/screens/Locations/EventPages/Event1/Event1.dart';
import 'package:vs/screens/Locations/HotelPages/Hotel1/hotel1.dart';
import 'package:vs/screens/post_app_bar.dart';
class DetailPage1 extends StatelessWidget {

  // ignore: use_key_in_widget_constructors

   @override
  Widget build(BuildContext context) {
     return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/imgs/Event1_1.jpg'),
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
          bottomNavigationBar: Event1(),

      ),
    );
  }
}