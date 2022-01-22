import 'package:e_commerce_ui/src/res/colors.dart';
import 'package:e_commerce_ui/src/res/dimen.dart';
import 'package:flutter/material.dart';

class SplashContent extends StatelessWidget {
  final String text, image;
  const SplashContent({
    Key? key,
    required this.text,
    required this.image,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        const Spacer(),
        Text(
          'ACCRA',
          style: TextStyle(
            fontSize: AppDimen.getProportionateScreenWidth(36),
            color: AppColors.kPrimaryColor,
            fontWeight: FontWeight.bold,
          ),
        ),
        Text(text, textAlign: TextAlign.center),
        const Spacer(flex: 2),
        Image.asset(
          image,
          height: AppDimen.getProportionateScreenHeight(265),
          width: AppDimen.getProportionateScreenWidth(235),
        ),
      ],
    );
  }
}
