import 'package:e_commerce_ui/src/res/dimen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CustomSurffixIcon extends StatelessWidget {
  final String svgIcon;
  const CustomSurffixIcon({
    Key? key,
    required this.svgIcon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(
        0,
        AppDimen.getProportionateScreenWidth(20),
        AppDimen.getProportionateScreenWidth(20),
        AppDimen.getProportionateScreenWidth(20),
      ),
      child: SvgPicture.asset(
        svgIcon,
        height: AppDimen.getProportionateScreenWidth(18),
      ),
    );
  }
}
