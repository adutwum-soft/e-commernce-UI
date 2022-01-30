import 'package:e_commerce_ui/src/res/dimen.dart';
import 'package:e_commerce_ui/src/res/styles.dart';
import 'package:e_commerce_ui/src/widget/sign_up_components/sign_up_form.dart';
import 'package:e_commerce_ui/src/widget/social_card.dart';
import 'package:flutter/material.dart';

class SignUpBody extends StatelessWidget {
  const SignUpBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: AppDimen.getProportionateScreenWidth(20),
        ),
        child: SingleChildScrollView(
          child: SizedBox(
            width: MediaQuery.of(context).size.width,
            child: Column(
              children: [
                SizedBox(height: AppDimen.screenHeight * 0.02),
                Text(
                  'Register Account',
                  style: AppStyles.headingStyle,
                ),
                const Text(
                  'Complete your details or continue \nwith social media',
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: AppDimen.screenHeight * 0.07),
                const SignUpForm(),
                SizedBox(height: AppDimen.screenHeight * 0.07),
                _socials(),
                const Text(
                  'By continuing you confirm that your agree \nwith our Terms and Conditions',
                  textAlign: TextAlign.center,
                )
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
