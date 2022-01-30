import 'package:e_commerce_ui/src/res/colors.dart';
import 'package:e_commerce_ui/src/res/dimen.dart';
import 'package:e_commerce_ui/src/ui/sign_up.dart';
import 'package:flutter/material.dart';

class NoAccountText extends StatelessWidget {
  const NoAccountText({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          'Don\'t have an account?',
          style: TextStyle(
            fontSize: AppDimen.getProportionateScreenWidth(16),
          ),
        ),
        InkWell(
          onTap: () => Navigator.pushNamed(context, Signup.routeName),
          child: Text(
            'Sign Up',
            style: TextStyle(
              fontSize: AppDimen.getProportionateScreenWidth(16),
              color: AppColors.kPrimaryColor,
            ),
          ),
        ),
      ],
    );
  }
}
