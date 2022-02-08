import 'package:e_commerce_ui/src/res/colors.dart';
import 'package:e_commerce_ui/src/res/dimen.dart';
import 'package:flutter/material.dart';

class ColorDot extends StatelessWidget {
  const ColorDot({
    Key? key,
    required this.color,
    this.isSelected = false,
  }) : super(key: key);

  final Color color;
  final bool isSelected;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 2),
      padding: const EdgeInsets.all(8),
      height: AppDimen.getProportionateScreenWidth(40),
      width: AppDimen.getProportionateScreenWidth(40),
      decoration: BoxDecoration(
        // color: product.colors[0],
        shape: BoxShape.circle,
        border: Border.all(
          color: isSelected ? AppColors.kPrimaryColor : Colors.transparent,
        ),
      ),
      child: DecoratedBox(
        decoration: BoxDecoration(
          color: color,
          shape: BoxShape.circle,
        ),
      ),
    );
  }
}
