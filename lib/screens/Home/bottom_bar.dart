import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class BottomNavbar extends StatelessWidget {
      static String routeName = "/bar";

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      color: Colors.black,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          NavItem(iconData: Icons.home, onPressed: () => Navigator.pushNamed(context, '/Home_'),iconColor: Colors.white,),
          NavItem(iconData: Icons.location_on,onPressed: () => Navigator.pushNamed(context, '/loc'),iconColor:Color(0xFFFF7643)),
          NavItem(iconData: Icons.logout,onPressed: () => _handleLogout(context),iconColor: Colors.white,),
        ],
      ),
    );
  }
  void _handleLogout(BuildContext context) async {
    await FirebaseAuth.instance.signOut();
    Navigator.pushNamedAndRemoveUntil(
      context,
      "/Auth", // Assurez-vous que "/Auth" est la route vers votre page de login
      (route) => false,
    );
  }
}

class NavItem extends StatelessWidget {
  final IconData iconData;
  final VoidCallback onPressed;
  final Color iconColor;

  NavItem({required this.iconData, required this.onPressed, required this.iconColor});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Icon(iconData, color: iconColor), // Utilisez iconColor au lieu de Colors.white
      ),
    );
  }
}