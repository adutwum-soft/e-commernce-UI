import 'package:e_commerce_ui/src/widget/home_widgets/home_body.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  static String routeName = "/home";
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: const HomeBody(),
    );
  }
}
