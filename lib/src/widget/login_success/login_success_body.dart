import 'package:e_commerce_ui/src/res/dimen.dart';
import 'package:flutter/material.dart';

import '../default_button.dart';

class LoginSuccessBody extends StatelessWidget {
  const LoginSuccessBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          SizedBox(height: AppDimen.screenHeight * 0.04),
          Image.asset(
            'assets/images/success.png',
            height: AppDimen.screenHeight * 0.4,
          ),
          SizedBox(height: AppDimen.screenHeight * 0.08),
          Text(
            'Login Success',
            style: TextStyle(
              color: Colors.black,
              fontSize: AppDimen.getProportionateScreenWidth(30),
              fontWeight: FontWeight.bold,
            ),
          ),
          const Spacer(),
          SizedBox(
            width: AppDimen.screenWidth * 0.6,
            child: DefaultButton(text: "Back to Home", onPress: () {}),
          ),
          const Spacer(),
        ],
      ),
    );
  }
}
