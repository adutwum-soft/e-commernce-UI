import 'package:e_commerce_ui/src/ui/forgot_passaword.dart';
import 'package:e_commerce_ui/src/ui/home.dart';
import 'package:e_commerce_ui/src/ui/login_success.dart';
import 'package:e_commerce_ui/src/ui/complete_profile.dart';
import 'package:e_commerce_ui/src/ui/otp_verif.dart';
import 'package:e_commerce_ui/src/ui/sign_in/sign_in.dart';
import 'package:e_commerce_ui/src/ui/sign_up.dart';
import 'package:e_commerce_ui/src/ui/splash/splash.dart';
import 'package:flutter/material.dart';

final Map<String, WidgetBuilder> routes = {
  Splash.routeName: (context) => const Splash(),
  SignIn.routeName: (context) => const SignIn(),
  ForgotPassword.routeName: (context) => const ForgotPassword(),
  LoginSuccess.routeName: (context) => const LoginSuccess(),
  Signup.routeName: (context) => const Signup(),
  CompleteProfile.routeName: (context) => const CompleteProfile(),
  OTPVerify.routeName: (context) => const OTPVerify(),
  Home.routeName: (context) => const Home(),
};
