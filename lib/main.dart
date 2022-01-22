import 'package:e_commerce_ui/src/res/colors.dart';
import 'package:e_commerce_ui/src/ui/splash/splash.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
          textTheme: const TextTheme(
            bodyText1: TextStyle(color: AppColors.kTextColor),
            bodyText2: TextStyle(color: AppColors.kTextColor),
          ),
          scaffoldBackgroundColor: Colors.white,
          visualDensity: VisualDensity.adaptivePlatformDensity,
          fontFamily: 'Muli'
          // primarySwatch: Colors.blue,
          ),
      home: const Splash(),
      debugShowCheckedModeBanner: false,
    );
  }
}
