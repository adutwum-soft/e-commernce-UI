import 'package:e_commerce_ui/src/res/dimen.dart';
import 'package:e_commerce_ui/src/res/strings.dart';
import 'package:e_commerce_ui/src/ui/profile.dart';
import 'package:e_commerce_ui/src/utils/constants.dart';
import 'package:flutter/material.dart';

import '../custom_suffix_icon.dart';
import '../default_button.dart';
import '../form_error.dart';

class SignUpForm extends StatefulWidget {
  const SignUpForm({Key? key}) : super(key: key);

  @override
  _SignUpFormState createState() => _SignUpFormState();
}

class _SignUpFormState extends State<SignUpForm> {
  final _formKey = GlobalKey<FormState>();
  final List<String> errors = [];
  late String email;
  late String password;
  late String conPassword;

  addError({String? error}) {
    if (!errors.contains(error)) {
      setState(() {
        errors.add(error!);
      });
    }
  }

  removeError({String? error}) {
    if (errors.contains(error)) {
      setState(() {
        errors.remove(error!);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          _buildEmailForm(),
          SizedBox(height: AppDimen.getProportionateScreenHeight(30)),
          _buildPassForm(),
          SizedBox(height: AppDimen.getProportionateScreenHeight(30)),
          _buildConPassForm(),
          FormError(errors: errors),
          SizedBox(height: AppDimen.getProportionateScreenHeight(40)),
          DefaultButton(
            text: 'Continue',
            onPress: () {
              if (_formKey.currentState!.validate()) {
                _formKey.currentState!.save();
                Navigator.of(context).push(MaterialPageRoute(builder: (_) {
                  return const Profile();
                }));
              }
            },
          ),
        ],
      ),
    );
  }

  TextFormField _buildEmailForm() {
    return TextFormField(
      onSaved: (newValue) => email = newValue!,
      onChanged: (value) {
        if (value.isNotEmpty && errors.contains(AppStrings.kEmailNullError)) {
          removeError(error: AppStrings.kEmailNullError);
        } else if (emailValidatorRegExp.hasMatch(value) &&
            errors.contains(AppStrings.kInvalidEmailError)) {
          removeError(error: AppStrings.kInvalidEmailError);
        }
      },
      validator: (value) {
        if (value!.isEmpty && !errors.contains(AppStrings.kEmailNullError)) {
          setState(() {
            errors.add(AppStrings.kEmailNullError);
          });
          return '';
        } else if (!emailValidatorRegExp.hasMatch(value) &&
            !errors.contains(AppStrings.kInvalidEmailError)) {
          setState(() {
            errors.add(AppStrings.kInvalidEmailError);
          });
          return '';
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
          removeError(error: AppStrings.kPassNullError);
        } else if (value.length >= 8 &&
            errors.contains(AppStrings.kShortPassError)) {
          removeError(error: AppStrings.kShortPassError);
        }
        password = value;
      },
      validator: (value) {
        if (value!.isEmpty && !errors.contains(AppStrings.kPassNullError)) {
          setState(() {
            errors.add(AppStrings.kPassNullError);
          });
          return '';
        } else if (value.length < 8 &&
            !errors.contains(AppStrings.kShortPassError)) {
          setState(() {
            errors.add(AppStrings.kShortPassError);
          });
          return '';
        }
        return null;
      },
      obscureText: true,
      keyboardType: TextInputType.text,
      decoration: inputDecoration(
        placeholder: 'Enter your password',
        label: 'Password',
        svgIcon: 'assets/icons/Lock.svg',
      ),
    );
  }

  TextFormField _buildConPassForm() {
    return TextFormField(
      onSaved: (newValue) => conPassword = newValue!,
      onChanged: (value) {
        if (password == conPassword) {
          removeError(error: AppStrings.kMatchPassError);
        }
      },
      validator: (value) {
        if (value!.isEmpty) {
          return '';
        } else if (password != value) {
          addError(error: AppStrings.kMatchPassError);
          return '';
        }
        return null;
      },
      obscureText: true,
      keyboardType: TextInputType.text,
      decoration: inputDecoration(
        placeholder: 'Enter your confirm password',
        label: 'Confirm Password',
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
