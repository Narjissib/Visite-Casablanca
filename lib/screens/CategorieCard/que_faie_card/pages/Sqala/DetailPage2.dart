import 'package:flutter/material.dart';
import 'package:vs/screens/CategorieCard/que_faie_card/pages/Sqala/sqala.dart';
import 'package:vs/screens/post_app_bar.dart';
class DetailPage2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
     return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/imgs/sqala10.jpeg'),
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
          bottomNavigationBar: Sqala(),

      ),
    );
  }
}