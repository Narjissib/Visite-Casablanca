import 'package:flutter/material.dart';
import 'package:vs/screens/DetailPages/Place_Mohamed5/PlaceM5.dart';
import 'package:vs/screens/post_app_bar.dart';
class DetailPage3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
     return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/imgs/plm5.jpeg'),
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
          bottomNavigationBar: PlaceM5(),

      ),
    );
  }
}