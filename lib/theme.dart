import 'package:flutter/material.dart';
ThemeData theme() {
  return ThemeData(
    inputDecorationTheme: inputDecorationTheme(),
     scaffoldBackgroundColor: Colors.white,
        //appBarTheme:  appBarTheme(),
  );

}
/*
AppBarTheme appBarTheme() {
  // ignore: prefer_const_constructors
  return AppBarTheme(
        backgroundColor: Colors.white, // Couleur de fond de l'AppBar
        elevation: 0, // Pas d'ombre pour l'AppBar
        iconTheme: IconThemeData(color: Colors.grey), // Couleur des icônes de l'AppBar
      );
}
*/

InputDecorationTheme inputDecorationTheme() {
  OutlineInputBorder outlineInputBorder = OutlineInputBorder(
    borderRadius: BorderRadius.circular(28),
    borderSide: const BorderSide(color: Colors.grey),
    gapPadding: 10,
  );
  return InputDecorationTheme(
    // If  you are using latest version of flutter then lable text and hint text shown like this
    // if you r using flutter less then 1.20.* then maybe this is not working properly
    // if we are define our floatingLabelBehavior in our theme then it's not applayed
    floatingLabelBehavior: FloatingLabelBehavior.always,
    contentPadding: const EdgeInsets.symmetric(horizontal: 42, vertical: 20),
    enabledBorder: outlineInputBorder,
    focusedBorder: outlineInputBorder,
    border: outlineInputBorder,
  );
}



