import 'package:e_commerce_ui/src/widget/forgot_password.dart/forgot_pass_body.dart';
import 'package:flutter/material.dart';

class ForgotPassword extends StatelessWidget {
  static String routeName = "/forgot-pass";
  const ForgotPassword({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Forgot Password'),
      ),
      body: const ForgotPassBody(),
    );
  }
}
