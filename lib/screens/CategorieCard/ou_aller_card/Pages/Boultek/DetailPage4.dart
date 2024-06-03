import 'package:flutter/material.dart';
import 'package:vs/screens/CategorieCard/ou_aller_card/Pages/AncienneMedina/Medina.dart';
import 'package:vs/screens/CategorieCard/ou_aller_card/Pages/Aquaparc/aqua.dart';
import 'package:vs/screens/CategorieCard/ou_aller_card/Pages/Boultek/Boultek.dart';
import 'package:vs/screens/post_app_bar.dart';
class DetailPage4 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
     return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/imgs/img5.jpeg'),
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
          bottomNavigationBar: Boultek(),

      ),
    );
  }
}