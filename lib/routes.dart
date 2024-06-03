import 'package:email_otp/email_otp.dart';
import 'package:flutter/material.dart';
import 'package:vs/Auth.dart';
import 'package:vs/screens/CategorieCard/ou_aller_card/ou_aller.dart';
import 'package:vs/screens/CategorieCard/que_faie_card/que_faire.dart';
import 'package:vs/screens/Complter_profile/Complete_profile_screen.dart';
import 'package:vs/screens/Home/Composants/home_page.dart';
import 'package:vs/screens/Home/Home_Screen.dart';
import 'package:vs/screens/Home/Hoome.dart';
import 'package:vs/screens/Home/bottom_bar.dart';
import 'package:vs/screens/Locations/Activite.dart';
import 'package:vs/screens/Locations/AgenceVoyage.dart';
import 'package:vs/screens/Locations/Components/Hotel.dart';
import 'package:vs/screens/Locations/HotelsPage.dart';
import 'package:vs/screens/Locations/Location_page.dart';
import 'package:vs/screens/Locations/Compsants/Locations.dart';
import 'package:vs/screens/Welcomepage.dart';
import 'package:vs/screens/sign_in/Login.dart';
import 'package:vs/screens/sign_up/sign_up_screen.dart';

import 'Verification/send_otp.dart';
import 'screens/Locations/EvenementPage.dart';
import 'screens/Locations/RestaurantPage.dart';
  late final EmailOTP myauth;
  late final String email;
  String? someNullableValue; // Défini comme nullable avec le '?'
  String routeName = someNullableValue?.toString() ?? '';





final Map<String, WidgetBuilder> routes = {
  Welcomepage.routeName:(context) => Welcomepage(),
  // ignore: prefer_const_constructors
  login.routeName:(context)=>login(),
  SignUpScreen.routeName:(context)=>SignUpScreen(),
  CompleteProfileScreen.routeName: (context) => CompleteProfileScreen(email: ModalRoute.of(context)?.settings.arguments as String),
  Auth.routeName:(context)=>Auth(),
  homescreen.routeName:(context)=>homescreen(),
  MyApp.routeName:(context)=>const MyApp(),
  Home.routeName:(context)=>const Home(),
  HomePage.routeName:(context)=> HomePage(),
  BottomNavbar.routeName:(context)=>  BottomNavbar(),
  LocationPage.routeName:(context)=> const LocationPage(),
  Loc.routeName:(context)=> const Loc(),
  oualler.routeName:(AboutDialog)=> const oualler(),
  quefaire.routeName:(AboutDialog)=> const quefaire(),
  HotelPage.routeName:(AboutDialog)=> const HotelPage(),
  RestauPage.routeName:(AboutDialog)=> const RestauPage(),
  EventPage.routeName:(AboutDialog)=> const EventPage(),
  ActivitePage.routeName:(AboutDialog)=> const ActivitePage(),
  AgencePage.routeName:(AboutDialog)=> const AgencePage(),


};