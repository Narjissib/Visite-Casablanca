import 'package:flutter/material.dart';
import 'package:vs/screens/CategorieCard/que_faie_card/Compenent/Culture/bank.dart';
import 'package:vs/screens/CategorieCard/que_faie_card/Compenent/Culture/darala.dart';
import 'package:vs/screens/CategorieCard/que_faie_card/Compenent/Culture/saqala.dart';
import 'package:vs/screens/CategorieCard/que_faie_card/Compenent/Shopping/Habouss.dart';
import 'package:vs/screens/CategorieCard/que_faie_card/Compenent/Shopping/Marina.dart';
import 'package:vs/screens/CategorieCard/que_faie_card/Compenent/Shopping/Tachfin.dart';
class QuefaireBody extends StatelessWidget {
  const QuefaireBody({super.key});

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
                "Que faire ?",
                style: TextStyle(
                  color: Color(0xFFFF7643),
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: EdgeInsets.only(left: 20),
              child: Text(
                "On ne risque pas de s’ennuyer à Casa. La ville regorge de restaurants, cafés, galeries d’art, lieux de culture et de divertissement, cinémas... Partez à la découverte de la Ville Blanche en explorant ses diverses facettes, ses adresses emblématiques, ses musées et ses galeries d’art. Pénétrez un Casablanca loin des sentiers battus. Dans un cadre vert bucolique ou dans une ambiance feutrée, dans une salle obscure ou un musée, construisez votre propre itinéraire pour apprécier Dar El-Beïda.",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 17,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
             Padding(
              padding: EdgeInsets.only(left: 20),
              child: Text(
                "Que faire à Casablanca ?",
                style: TextStyle(
                  color: Color(0xFFFF7643),
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
             SizedBox(
              height: 15,
            ),
           
            Expanded(
              child: ListView(
                children: [
                  bank(),
                  Saqala(),
                  DarAlAla(),
                  TachfineCentre(),
                  Habouss(),
                  Marina(),
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