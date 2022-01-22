import 'package:e_commerce_ui/src/ui/forgot_passaword.dart';
import 'package:e_commerce_ui/src/ui/sign_in/sign_in.dart';
import 'package:e_commerce_ui/src/ui/splash/splash.dart';
import 'package:flutter/material.dart';

final Map<String, WidgetBuilder> routes = {
  Splash.routeName: (context) => const Splash(),
  SignIn.routeName: (context) => const SignIn(),
  ForgotPassword.routeName: (context) => const ForgotPassword(),
};
