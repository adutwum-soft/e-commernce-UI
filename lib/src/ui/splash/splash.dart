import 'package:e_commerce_ui/src/res/dimen.dart';
import 'package:e_commerce_ui/src/widget/splash_body.dart';
import 'package:flutter/material.dart';

class Splash extends StatelessWidget {
  static String routeName = "/splash";
  const Splash({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    AppDimen().init(context);
    return const Scaffold(
      body: SplashBody(),
    );
  }
}
