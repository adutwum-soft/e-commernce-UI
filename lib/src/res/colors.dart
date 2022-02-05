import 'package:flutter/material.dart';

class AppColors {
  static const kPrimaryColor = Color(0xFFFF7643);
  static const kPrimaryLightColor = Color(0xFFFFECDF);

  static const kPrimaryGradientColor = LinearGradient(
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
    colors: [Color(0xFFFFA53E), Color(0xFFFF7643)],
  );

  static const kSecondaryColor = Color(0xFF979797);
  static const kTextColor = Color(0xFF757575);
  static const darkBlue = Color(0xFF4A3298);

  static const softRed = Color(0xFFF6625E);
  static const slightlyDesaturatedViolet = Color(0xFF836DB8);
  static const verySoftOrange = Color(0xFFDECB9C);
}
