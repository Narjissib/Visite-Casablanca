import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../size_config.dart';

class CustomSurffixIcon extends StatelessWidget {
  const CustomSurffixIcon({
    super.key, 
    required this.svgIcon,
  });
  final String svgIcon;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(
      0,   
      getProportionateScreenWidth(20),
      getProportionateScreenWidth(20),
      getProportionateScreenWidth(20),
      ),
      child: SvgPicture.asset(svgIcon,
      height: getProportionateScreenWidth(18),
      ),
    );
  }
}