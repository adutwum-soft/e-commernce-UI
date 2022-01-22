import 'package:e_commerce_ui/src/res/dimen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class FormError extends StatelessWidget {
  const FormError({
    Key? key,
    required this.errors,
  }) : super(key: key);

  final List<String> errors;

  @override
  Widget build(BuildContext context) {
    return Column(
      children:
          List.generate(errors.length, (index) => formErrorText(errors[index])),
    );
  }

  Row formErrorText(String error) {
    return Row(
      children: <Widget>[
        SvgPicture.asset(
          'assets/icons/Error.svg',
          height: AppDimen.getProportionateScreenHeight(14),
          width: AppDimen.getProportionateScreenWidth(14),
        ),
        SizedBox(width: AppDimen.getProportionateScreenWidth(10)),
        Text(error),
      ],
    );
  }
}
