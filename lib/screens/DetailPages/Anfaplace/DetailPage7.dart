import 'package:flutter/material.dart';
import 'package:vs/screens/DetailPages/Anfaplace/anfa.dart';
import 'package:vs/screens/post_app_bar.dart';
class DetailPage7 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
     return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/imgs/anfa3.jpg'),
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
          bottomNavigationBar: Anfa(),

      ),
    );
  }
}