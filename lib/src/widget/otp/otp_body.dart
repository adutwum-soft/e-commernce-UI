import 'package:e_commerce_ui/src/res/colors.dart';
import 'package:e_commerce_ui/src/res/dimen.dart';
import 'package:e_commerce_ui/src/res/styles.dart';
import 'package:flutter/material.dart';

import 'otp_form.dart';

class OTPBody extends StatelessWidget {
  const OTPBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: EdgeInsets.symmetric(
            horizontal: AppDimen.getProportionateScreenWidth(20)),
        child: SingleChildScrollView(
          child: SizedBox(
            width: MediaQuery.of(context).size.width,
            child: Column(
              children: [
                SizedBox(height: AppDimen.screenHeight * 0.05), // 5%
                Text(
                  'OTP Verification',
                  style: AppStyles.headingStyle,
                ),
                const Text(
                  'We sent your code t0 027 7104 ***',
                  textAlign: TextAlign.center,
                ),
                _buildTimer(),
                SizedBox(height: AppDimen.screenHeight * 0.15), // 15%
                const OTPForm(),
                SizedBox(height: AppDimen.screenHeight * 0.1),
                InkWell(
                  onTap: () {},
                  child: const Text('Resend OTP Code',
                      style: TextStyle(
                        decoration: TextDecoration.underline,
                      ),
                      textAlign: TextAlign.center),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Row _buildTimer() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text('This code will expire in '),
        TweenAnimationBuilder(
          tween: Tween(begin: 30.0, end: 0),
          duration: const Duration(seconds: 30),
          onEnd: () {},
          builder: (context, value, child) {
            return Text(
              '00:${double.parse(value.toString()).toInt()}',
              style: const TextStyle(color: AppColors.kPrimaryColor),
            );
          },
        ),
      ],
    );
  }
}
