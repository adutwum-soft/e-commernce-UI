import 'package:e_commerce_ui/src/widget/login_success/login_success_body.dart';
import 'package:flutter/material.dart';

class LoginSuccess extends StatelessWidget {
  static String routeName = "/login-success";
  const LoginSuccess({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: SizedBox(),
          title: const Text('Login Success'),
        ),
        body: const LoginSuccessBody());
  }
}
