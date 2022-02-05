import 'package:e_commerce_ui/src/res/colors.dart';
import 'package:e_commerce_ui/src/res/dimen.dart';
import 'package:flutter/material.dart';

class AppBanner extends StatelessWidget {
  final String title;
  final String des;
  const AppBanner({
    Key? key,
    required this.title,
    required this.des,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      // height: 90,
      margin: EdgeInsets.symmetric(
        horizontal: AppDimen.getProportionateScreenWidth(20),
      ),
      padding: EdgeInsets.symmetric(
        horizontal: AppDimen.getProportionateScreenWidth(20),
        vertical: AppDimen.getProportionateScreenWidth(15),
      ),
      decoration: BoxDecoration(
        color: AppColors.darkBlue,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Text.rich(
        TextSpan(
          text: '$title\n',
          style: const TextStyle(
            color: Colors.white,
          ),
          children: [
            TextSpan(
              text: des,
              style: const TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
