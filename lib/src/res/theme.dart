import 'package:e_commerce_ui/src/res/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class AppTheme {
  static ThemeData theme() {
    return ThemeData(
        textTheme: textTheme(),
        appBarTheme: appBarTheme(),
        scaffoldBackgroundColor: Colors.white,
        visualDensity: VisualDensity.adaptivePlatformDensity,
        fontFamily: 'Muli',
        inputDecorationTheme: inputDecorationTheme()
        // primarySwatch: Colors.blue,
        );
  }

  static InputDecorationTheme inputDecorationTheme() {
    return InputDecorationTheme(
      floatingLabelBehavior: FloatingLabelBehavior.always,
      contentPadding: const EdgeInsets.symmetric(
        horizontal: 45,
        vertical: 20,
      ),
      enabledBorder: outlineInputBorder(),
      focusedBorder: outlineInputBorder(),
      border: outlineInputBorder(),
    );
  }

  static OutlineInputBorder outlineInputBorder() {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(28),
      borderSide: const BorderSide(color: AppColors.kTextColor),
      gapPadding: 10,
    );
  }

  static TextTheme textTheme() {
    return const TextTheme(
      bodyText1: TextStyle(color: AppColors.kTextColor),
      bodyText2: TextStyle(color: AppColors.kTextColor),
    );
  }

  static AppBarTheme appBarTheme() {
    return const AppBarTheme(
      color: Colors.white,
      elevation: 0,
      systemOverlayStyle: SystemUiOverlayStyle.light,
      iconTheme: IconThemeData(
        color: Colors.black,
      ),
      titleTextStyle: TextStyle(
        color: Color(0xFF8B8B8B),
        fontSize: 18,
      ),
    );
  }
}
