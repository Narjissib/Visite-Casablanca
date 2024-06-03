import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../size_config.dart';

class SocialCard extends StatelessWidget {
  const SocialCard({
    required this.icon,
    required this.press,
    Key? key,
  }) : super(key: key);
  final String icon;
  final Function() press; 


  @override
  Widget build(BuildContext context) {
    double iconSize = 50.0;
    return GestureDetector(
      onTap: press,
      child: Container(
        margin: 
        EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(10)),
      padding: EdgeInsets.all(getProportionateScreenWidth(12)),
      height: getProportionateScreenHeight(iconSize),
      width: getProportionateScreenWidth(iconSize),
      decoration: BoxDecoration(
       color: Color(0xFFF5F6F9),
       shape: BoxShape.circle,
      ),
      child: SvgPicture.asset(icon)               ),
    );
  }
}