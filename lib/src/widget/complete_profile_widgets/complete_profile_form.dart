import 'package:e_commerce_ui/src/res/dimen.dart';
import 'package:e_commerce_ui/src/res/strings.dart';
import 'package:e_commerce_ui/src/ui/otp_verif.dart';
import 'package:flutter/material.dart';

import '../custom_suffix_icon.dart';
import '../default_button.dart';
import '../form_error.dart';

class CompleteProfileForm extends StatefulWidget {
  const CompleteProfileForm({Key? key}) : super(key: key);

  @override
  _CompleteProfileFormState createState() => _CompleteProfileFormState();
}

class _CompleteProfileFormState extends State<CompleteProfileForm> {
  final _formKey = GlobalKey<FormState>();
  final List<String> errors = [];
  late String fName;
  late String lName;
  late String phoneNum;
  late String address;

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          SizedBox(height: AppDimen.getProportionateScreenHeight(30)),
          _buildFirstNameForm(),
          SizedBox(height: AppDimen.getProportionateScreenHeight(30)),
          _buildLastNameForm(),
          SizedBox(height: AppDimen.getProportionateScreenHeight(30)),
          _buildPhoneForm(),
          SizedBox(height: AppDimen.getProportionateScreenHeight(30)),
          _buildAddressForm(),
          FormError(errors: errors),
          SizedBox(height: AppDimen.getProportionateScreenHeight(40)),
          DefaultButton(
            text: 'Continue',
            onPress: () {
              if (_formKey.currentState!.validate()) {
                // route to OTP page
                Navigator.pushNamed(context, OTPVerify.routeName);
              }
            },
          ),
        ],
      ),
    );
  }

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

  TextFormField _buildFirstNameForm() {
    return TextFormField(
      onSaved: (newValue) => fName = newValue!,
      onChanged: (value) {
        if (value.isNotEmpty && errors.contains(AppStrings.kNamelNullError)) {
          removeError(error: AppStrings.kNamelNullError);
        }
      },
      validator: (value) {
        if (value!.isEmpty && !errors.contains(AppStrings.kNamelNullError)) {
          addError(error: AppStrings.kNamelNullError);
          return '';
        }
        return null;
      },
      decoration: inputDecoration(
        placeholder: 'Enter your first name',
        label: 'First Name',
        svgIcon: 'assets/icons/User.svg',
      ),
    );
  }

  TextFormField _buildLastNameForm() {
    return TextFormField(
      onSaved: (newValue) => lName = newValue!,
      onChanged: (value) {
        if (value.isNotEmpty && errors.contains(AppStrings.kNamelNullError)) {
          removeError(error: AppStrings.kNamelNullError);
        }
      },
      validator: (value) {
        if (value!.isEmpty && !errors.contains(AppStrings.kNamelNullError)) {
          addError(error: AppStrings.kNamelNullError);
          return '';
        }
        return null;
      },
      decoration: inputDecoration(
        placeholder: 'Enter your last name',
        label: 'Last Name',
        svgIcon: 'assets/icons/User.svg',
      ),
    );
  }

  TextFormField _buildPhoneForm() {
    return TextFormField(
      onSaved: (newValue) => phoneNum = newValue!,
      onChanged: (value) {
        if (value.isNotEmpty &&
            errors.contains(AppStrings.kPhoneNumberNullError)) {
          removeError(error: AppStrings.kPhoneNumberNullError);
        }
      },
      validator: (value) {
        if (value!.isEmpty &&
            !errors.contains(AppStrings.kPhoneNumberNullError)) {
          addError(error: AppStrings.kPhoneNumberNullError);
          return '';
        }
        return null;
      },
      keyboardType: TextInputType.phone,
      decoration: inputDecoration(
        placeholder: 'Enter your phone number',
        label: 'Phone Number',
        svgIcon: 'assets/icons/Phone.svg',
      ),
    );
  }

  TextFormField _buildAddressForm() {
    return TextFormField(
      onSaved: (newValue) => address = newValue!,
      onChanged: (value) {
        if (value.isNotEmpty && errors.contains(AppStrings.kAddressNullError)) {
          removeError(error: AppStrings.kAddressNullError);
        }
      },
      validator: (value) {
        if (value!.isEmpty && !errors.contains(AppStrings.kAddressNullError)) {
          addError(error: AppStrings.kAddressNullError);
          return '';
        }
        return null;
      },
      keyboardType: TextInputType.streetAddress,
      decoration: inputDecoration(
        placeholder: 'Enter your address',
        label: 'Address',
        svgIcon: 'assets/icons/Location point.svg',
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
