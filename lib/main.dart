import 'package:e_commerce_ui/src/res/colors.dart';
import 'package:e_commerce_ui/src/res/theme.dart';
import 'package:e_commerce_ui/src/ui/splash/splash.dart';
import 'package:e_commerce_ui/src/utils/routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

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
      theme: AppTheme.theme(),
      // home: const Splash(),
      initialRoute: Splash.routeName,
      routes: routes,
      debugShowCheckedModeBanner: false,
    );
  }
}
