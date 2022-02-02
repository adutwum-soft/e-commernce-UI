import 'package:e_commerce_ui/src/widget/otp/otp_body.dart';
import 'package:flutter/material.dart';

class OTPVerify extends StatelessWidget {
  static String routeName = '/otp';
  const OTPVerify({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('OTP Verification'),
      ),
      body: const OTPBody(),
    );
  }
}
