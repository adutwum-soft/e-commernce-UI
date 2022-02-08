import 'package:e_commerce_ui/src/widget/home_widgets/home_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Home extends StatelessWidget {
  static String routeName = "home";
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const AnnotatedRegion<SystemUiOverlayStyle>(
      // Use [SystemUiOverlayStyle.light] for white status bar
      // or [SystemUiOverlayStyle.dark] for black status bar
      value: SystemUiOverlayStyle.dark,
      child: Scaffold(
        body: HomeBody(),
      ),
    );
  }
}
