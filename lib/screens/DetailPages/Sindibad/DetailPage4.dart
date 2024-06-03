import 'package:flutter/material.dart';
import 'package:vs/screens/DetailPages/Sindibad/Sindibad.dart';
import 'package:vs/screens/post_app_bar.dart';
class DetailPage4 extends StatelessWidget {
 @override
  Widget build(BuildContext context) {
     return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/imgs/Sindi.jpeg'),
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
          bottomNavigationBar: Sindibade(),

      ),
    );
  }
}
