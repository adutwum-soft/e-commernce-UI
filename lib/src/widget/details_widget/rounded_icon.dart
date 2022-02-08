import 'package:e_commerce_ui/src/res/dimen.dart';
import 'package:flutter/material.dart';

class RoundedIcon extends StatelessWidget {
  final IconData iconData;
  final VoidCallback press;
  final bool showShadow;

  const RoundedIcon({
    Key? key,
    required this.iconData,
    required this.press,
    this.showShadow = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: AppDimen.getProportionateScreenWidth(40),
      width: AppDimen.getProportionateScreenWidth(40),
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        boxShadow: [
          if (showShadow)
            BoxShadow(
              offset: const Offset(0, 6),
              blurRadius: 10,
              color: const Color(0xFFB0B0B0).withOpacity(0.2),
            ),
        ],
      ),
      child: TextButton(
        style: TextButton.styleFrom(
          padding: const EdgeInsets.only(left: 5),
          primary: Colors.grey,
          backgroundColor: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(50),
          ),
        ),
        onPressed: press,
        child: Icon(
          iconData,
          color: Colors.black,
        ),
      ),
    );
  }
}
