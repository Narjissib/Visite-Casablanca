import 'package:flutter/material.dart';
import 'package:vs/screens/CategorieCard/ou_aller_card/Components/A%C3%A9roclub.dart';
import 'package:vs/screens/CategorieCard/ou_aller_card/Components/AncienneMedina.dart';
import 'package:vs/screens/CategorieCard/ou_aller_card/Components/Aquaparc.dart';
import 'package:vs/screens/CategorieCard/ou_aller_card/Components/Boultek.dart';
import 'package:vs/screens/CategorieCard/ou_aller_card/Components/CitePortugaise.dart';
import 'package:vs/screens/CategorieCard/ou_aller_card/Components/Citerneportugaise.dart';
import 'package:vs/screens/CategorieCard/ou_aller_card/Components/DreamVillage.dart';
import 'package:vs/screens/CategorieCard/ou_aller_card/Components/Fauconniers.dart';
import 'package:vs/screens/CategorieCard/ou_aller_card/Components/Rialito.dart';
import 'package:vs/screens/CategorieCard/ou_aller_card/Components/VillaHouda.dart';

class ouallerbody extends StatelessWidget {
  const ouallerbody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 14,
            ),
            Padding(
              padding: EdgeInsets.only(left: 20),
              child: Text(
                "Où aller ?",
                style: TextStyle(
                  color: Color(0xFFFF7643),
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 20),
              child: Text(
                "Les lieux où on peut vivre des merveilleuses éxpériences",
                style: TextStyle(
                  color: Color.fromARGB(223, 35, 42, 39),
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Expanded(
              child: ListView(
                children: [
                  Aeroclub(),
                  AncienneMedina(),
                  Aquaparc(),
                  Boultek(),
                  Rialito(),
                  CiternePortugaise(),
                  CitePortugaise(),
                  Fauconnier(),
                  Village(),
                  VillaHouda(),
                ],
                
              ),
            ),
            SizedBox(
              height: 10,
            ),
          ],
        ),
      ),
    );
  }
}
