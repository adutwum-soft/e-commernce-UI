import 'package:e_commerce_ui/src/res/dimen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class SocialCard extends StatelessWidget {
  final String svgIcon;
  final Function()? pressed;
  const SocialCard({
    Key? key,
    required this.svgIcon,
    required this.pressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: pressed,
      child: Container(
        margin: EdgeInsets.symmetric(
            horizontal: AppDimen.getProportionateScreenWidth(10)),
        padding: EdgeInsets.all(AppDimen.getProportionateScreenWidth(12)),
        height: AppDimen.getProportionateScreenHeight(44),
        width: AppDimen.getProportionateScreenWidth(40),
        decoration: const BoxDecoration(
          color: Color(0xFFF5F6F9),
          shape: BoxShape.circle,
        ),
        child: SvgPicture.asset(svgIcon),
      ),
    );
  }
}
