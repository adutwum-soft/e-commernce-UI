import 'package:e_commerce_ui/src/res/colors.dart';
import 'package:e_commerce_ui/src/res/dimen.dart';
import 'package:e_commerce_ui/src/res/strings.dart';
import 'package:e_commerce_ui/src/ui/forgot_passaword.dart';
import 'package:e_commerce_ui/src/utils/constants.dart';
import 'package:e_commerce_ui/src/widget/custom_suffix_icon.dart';
import 'package:e_commerce_ui/src/widget/default_button.dart';
import 'package:flutter/material.dart';

import '../form_error.dart';

class SignForm extends StatefulWidget {
  const SignForm({Key? key}) : super(key: key);

  @override
  _SignFormState createState() => _SignFormState();
}

class _SignFormState extends State<SignForm> {
  final _formKey = GlobalKey<FormState>();
  final List<String> errors = [];
  late String email;
  late String password;
  bool remember = false;

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: <Widget>[
          _buildEmailForm(),
          SizedBox(height: AppDimen.getProportionateScreenHeight(30)),
          _buildPassForm(),
          SizedBox(height: AppDimen.getProportionateScreenHeight(30)),
          _buildRemeber(),
          FormError(errors: errors),
          SizedBox(height: AppDimen.getProportionateScreenHeight(20)),
          DefaultButton(
            text: 'Continue',
            onPress: () {
              if (_formKey.currentState!.validate()) {
                _formKey.currentState!.save();
              }
            },
          ),
        ],
      ),
    );
  }

  Row _buildRemeber() {
    return Row(
      children: <Widget>[
        Checkbox(
          activeColor: AppColors.kPrimaryColor,
          value: remember,
          onChanged: (value) {
            setState(() {
              remember = value!;
            });
          },
        ),
        const Text('Remember me'),
        const Spacer(),
        InkWell(
          onTap: () =>
              Navigator.popAndPushNamed(context, ForgotPassword.routeName),
          child: const Text(
            'Forgot Password',
            style: TextStyle(
              decoration: TextDecoration.underline,
            ),
          ),
        ),
      ],
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

  TextFormField _buildPassForm() {
    return TextFormField(
      onSaved: (newValue) => password = newValue!,
      onChanged: (value) {
        if (value.isNotEmpty && errors.contains(AppStrings.kPassNullError)) {
          setState(() {
            errors.remove(AppStrings.kPassNullError);
          });
        } else if (value.length >= 8 &&
            errors.contains(AppStrings.kShortPassError)) {
          setState(() {
            errors.remove(AppStrings.kShortPassError);
          });
        }
        return null;
      },
      validator: (value) {
        if (value!.isEmpty && !errors.contains(AppStrings.kPassNullError)) {
          setState(() {
            errors.add(AppStrings.kPassNullError);
          });
        } else if (value.length < 8 &&
            !errors.contains(AppStrings.kShortPassError)) {
          setState(() {
            errors.add(AppStrings.kShortPassError);
          });
        }
        return null;
      },
      obscureText: true,
      keyboardType: TextInputType.emailAddress,
      decoration: inputDecoration(
        placeholder: 'Enter your password',
        label: 'Password',
        svgIcon: 'assets/icons/Lock.svg',
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
