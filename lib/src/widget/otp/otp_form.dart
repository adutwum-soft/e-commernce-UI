import 'package:e_commerce_ui/src/res/colors.dart';
import 'package:e_commerce_ui/src/res/dimen.dart';
import 'package:e_commerce_ui/src/res/styles.dart';
import 'package:flutter/material.dart';

import '../default_button.dart';

class OTPForm extends StatefulWidget {
  const OTPForm({Key? key}) : super(key: key);

  @override
  _OTPFormState createState() => _OTPFormState();
}

class _OTPFormState extends State<OTPForm> {
  late FocusNode pin2;
  late FocusNode pin3;
  late FocusNode pin4;

  @override
  void initState() {
    super.initState();
    pin2 = FocusNode();
    pin3 = FocusNode();
    pin4 = FocusNode();
  }

  @override
  void dispose() {
    pin2.dispose();
    pin3.dispose();
    pin4.dispose();
    super.dispose();
  }

  nextField({String? value, FocusNode? focusNode}) {
    if (value!.length == 1) {
      focusNode!.requestFocus();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        children: [
          _buildPin(),
          SizedBox(height: AppDimen.screenHeight * 0.15),
          DefaultButton(onPress: () {}, text: "Continue"),
        ],
      ),
    );
  }

  Row _buildPin() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        SizedBox(
          width: AppDimen.getProportionateScreenWidth(60),
          child: TextFormField(
            autofocus: true,
            obscureText: true,
            keyboardType: TextInputType.number,
            style: const TextStyle(fontSize: 24),
            textAlign: TextAlign.center,
            decoration: AppStyles.otpStyle,
            onChanged: (value) {
              nextField(value: value, focusNode: pin2);
            },
          ),
        ),
        SizedBox(
          width: AppDimen.getProportionateScreenWidth(60),
          child: TextFormField(
            focusNode: pin2,
            obscureText: true,
            keyboardType: TextInputType.number,
            style: const TextStyle(fontSize: 24),
            textAlign: TextAlign.center,
            decoration: AppStyles.otpStyle,
            onChanged: (value) {
              nextField(value: value, focusNode: pin3);
            },
          ),
        ),
        SizedBox(
          width: AppDimen.getProportionateScreenWidth(60),
          child: TextFormField(
            focusNode: pin3,
            obscureText: true,
            keyboardType: TextInputType.number,
            style: const TextStyle(fontSize: 24),
            textAlign: TextAlign.center,
            decoration: AppStyles.otpStyle,
            onChanged: (value) {
              nextField(value: value, focusNode: pin4);
            },
          ),
        ),
        SizedBox(
          width: AppDimen.getProportionateScreenWidth(60),
          child: TextFormField(
            focusNode: pin4,
            obscureText: true,
            keyboardType: TextInputType.number,
            style: const TextStyle(fontSize: 24),
            textAlign: TextAlign.center,
            decoration: AppStyles.otpStyle,
            onChanged: (value) {
              pin4.unfocus();
            },
          ),
        ),
      ],
    );
  }
}
