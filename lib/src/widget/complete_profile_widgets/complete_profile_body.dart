import 'package:e_commerce_ui/src/res/dimen.dart';
import 'package:e_commerce_ui/src/res/styles.dart';
import 'package:e_commerce_ui/src/widget/complete_profile_widgets/complete_profile_form.dart';
import 'package:flutter/material.dart';

class CompleteProfileBody extends StatelessWidget {
  const CompleteProfileBody({Key? key}) : super(key: key);

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
              children: [
                SizedBox(height: AppDimen.screenHeight * 0.05),
                Text(
                  'Complete Profile',
                  style: AppStyles.headingStyle,
                ),
                const Text(
                  'Complete your details or continue \nwith social media',
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: AppDimen.screenHeight * 0.05),
                const CompleteProfileForm(),
                SizedBox(height: AppDimen.getProportionateScreenHeight(30)),
                const Text(
                  'By continuing you confirm that your agree \nwith our Terms and Conditions',
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
