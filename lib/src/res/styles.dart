import 'package:e_commerce_ui/src/res/colors.dart';
import 'package:e_commerce_ui/src/res/dimen.dart';
import 'package:flutter/material.dart';

class AppStyles {
  static final headingStyle = TextStyle(
    fontSize: AppDimen.getProportionateScreenWidth(28),
    fontWeight: FontWeight.bold,
    color: Colors.black,
    height: 1.5,
  );

  final otpInputDecoration = InputDecoration(
    contentPadding: EdgeInsets.symmetric(
      vertical: AppDimen.getProportionateScreenWidth(15),
    ),
    border: outlineInputBorder(),
    focusedBorder: outlineInputBorder(),
    enabledBorder: outlineInputBorder(),
  );

  static OutlineInputBorder outlineInputBorder() {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(
        AppDimen.getProportionateScreenWidth(15),
      ),
      borderSide: const BorderSide(
        color: AppColors.kTextColor,
      ),
    );
  }
}
