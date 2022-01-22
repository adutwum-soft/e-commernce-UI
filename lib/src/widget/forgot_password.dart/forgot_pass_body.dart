import 'package:e_commerce_ui/src/res/dimen.dart';
import 'package:e_commerce_ui/src/res/strings.dart';
import 'package:e_commerce_ui/src/utils/constants.dart';
import 'package:flutter/material.dart';

import '../custom_suffix_icon.dart';
import '../default_button.dart';
import '../form_error.dart';
import '../no_account.dart';

class ForgotPassBody extends StatelessWidget {
  const ForgotPassBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox(
        width: MediaQuery.of(context).size.width,
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(
                horizontal: AppDimen.getProportionateScreenWidth(20)),
            child: Column(
              children: [
                SizedBox(height: AppDimen.screenHeight * 0.04),
                Text(
                  'Forgot Password',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: AppDimen.getProportionateScreenWidth(28),
                  ),
                ),
                const Text(
                  'Please enter your email and we will send \nyou a link to return to your account',
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: AppDimen.screenHeight * 0.1),
                const ForgetPassForm()
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class ForgetPassForm extends StatefulWidget {
  const ForgetPassForm({Key? key}) : super(key: key);

  @override
  State<ForgetPassForm> createState() => _ForgetPassFormState();
}

class _ForgetPassFormState extends State<ForgetPassForm> {
  final _formKey = GlobalKey<FormState>();
  late String email;
  List<String> errors = [];

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          _buildEmailForm(),
          SizedBox(height: AppDimen.getProportionateScreenHeight(30)),
          FormError(errors: errors),
          SizedBox(height: AppDimen.screenHeight * 0.1),
          DefaultButton(
            text: "Continue",
            onPress: () {
              if (_formKey.currentState!.validate()) {
                // do something here
              }
            },
          ),
          SizedBox(height: AppDimen.screenHeight * 0.1),
          const NoAccountText()
        ],
      ),
    );
  }

  TextFormField _buildEmailForm() {
    return TextFormField(
      onSaved: (newValue) => email = newValue!,
      onChanged: (value) {
        if (value.isNotEmpty && errors.contains(AppStrings.kEmailNullError)) {
          setState(() {
            errors.remove(AppStrings.kEmailNullError);
          });
        } else if (emailValidatorRegExp.hasMatch(value) &&
            errors.contains(AppStrings.kInvalidEmailError)) {
          setState(() {
            errors.remove(AppStrings.kInvalidEmailError);
          });
        }
        return null;
      },
      validator: (value) {
        if (value!.isEmpty && !errors.contains(AppStrings.kEmailNullError)) {
          setState(() {
            errors.add(AppStrings.kEmailNullError);
          });
        } else if (!emailValidatorRegExp.hasMatch(value) &&
            !errors.contains(AppStrings.kInvalidEmailError)) {
          setState(() {
            errors.add(AppStrings.kInvalidEmailError);
          });
        }
        return null;
      },
      keyboardType: TextInputType.emailAddress,
      decoration: inputDecoration(
        placeholder: 'Enter your email',
        label: 'Email',
        svgIcon: 'assets/icons/Mail.svg',
      ),
    );
  }

  InputDecoration inputDecoration({
    required String placeholder,
    required String label,
    required String svgIcon,
  }) {
    return InputDecoration(
      hintText: placeholder,
      labelText: label,
      floatingLabelBehavior: FloatingLabelBehavior.always,
      suffixIcon: CustomSurffixIcon(svgIcon: svgIcon),
    );
  }
}
