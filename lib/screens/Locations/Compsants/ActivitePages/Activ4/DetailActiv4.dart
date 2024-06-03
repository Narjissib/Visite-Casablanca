import 'package:flutter/material.dart';
import 'package:vs/screens/Locations/Compsants/ActivitePages/Activ4/Activ4.dart';
import 'package:vs/screens/Locations/EventPages/Event4/Event4.dart';
import 'package:vs/screens/Locations/HotelPages/Hotel3/hotel3.dart';
import 'package:vs/screens/Locations/HotelPages/Hotel4/hotel4.dart';
import 'package:vs/screens/post_app_bar.dart';
class DetailPage4 extends StatelessWidget {

  // ignore: use_key_in_widget_constructors

   @override
  Widget build(BuildContext context) {
     return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/imgs/Activ4_2.jpg'),
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
          bottomNavigationBar: Activ4(),

      ),
    );
  }
}