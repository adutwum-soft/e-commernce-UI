import 'package:e_commerce_ui/src/widget/sign_up_components/sign_up_body.dart';
import 'package:flutter/material.dart';

class Signup extends StatelessWidget {
  static String routeName = "/signup";
  const Signup({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sign Up'),
      ),
      body: const SignUpBody(),
    );
  }
}
