import 'package:e_commerce_ui/src/widget/sign_in_components/sign_in_body.dart';
import 'package:flutter/material.dart';

class SignIn extends StatelessWidget {
  static String routeName = "/signin";
  const SignIn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Sign In',
        ),
      ),
      body: SignInBody(),
    );
  }
}
