import 'package:e_commerce_ui/src/res/colors.dart';
import 'package:e_commerce_ui/src/res/dimen.dart';
import 'package:e_commerce_ui/src/widget/no_account.dart';
import 'package:e_commerce_ui/src/widget/sign_in_components/sign_form.dart';
import 'package:flutter/material.dart';

import '../social_card.dart';

class SignInBody extends StatelessWidget {
  const SignInBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox(
        width: MediaQuery.of(context).size.width,
        child: Padding(
          padding: EdgeInsets.symmetric(
              horizontal: AppDimen.getProportionateScreenWidth(20)),
          child: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                SizedBox(height: AppDimen.screenHeight * 0.04),
                Text(
                  'Welcome Back',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: AppDimen.getProportionateScreenWidth(28),
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const Text(
                  'Sign in with your email \nor continue with social media',
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: AppDimen.screenHeight * 0.08),
                const SignForm(),
                SizedBox(height: AppDimen.screenHeight * 0.08),
                _socials(),
                SizedBox(height: AppDimen.getProportionateScreenWidth(20)),
                const NoAccountText(),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Row _socials() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SocialCard(
          svgIcon: 'assets/icons/facebook-2.svg',
          pressed: () {},
        ),
        SocialCard(
          svgIcon: 'assets/icons/google-icon.svg',
          pressed: () {},
        ),
        SocialCard(
          svgIcon: 'assets/icons/twitter.svg',
          pressed: () {},
        ),
      ],
    );
  }
}
