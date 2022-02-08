import 'package:e_commerce_ui/src/models/product.dart';
import 'package:e_commerce_ui/src/res/dimen.dart';
import 'package:flutter/material.dart';

import 'color_dot.dart';
import 'rounded_icon.dart';

class ColorsDots extends StatelessWidget {
  const ColorsDots({
    Key? key,
    required this.product,
  }) : super(key: key);

  final Product product;

  @override
  Widget build(BuildContext context) {
    int selectedColor = 3;

    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: AppDimen.getProportionateScreenWidth(20),
      ),
      child: Row(
        children: [
          ...List.generate(
            product.colors.length,
            (index) => ColorDot(
              color: product.colors[index],
              isSelected: selectedColor == index,
            ),
          ),
          const Spacer(),
          RoundedIcon(
            iconData: Icons.remove,
            press: () {},
          ),
          SizedBox(width: AppDimen.getProportionateScreenWidth(15)),
          RoundedIcon(
            iconData: Icons.add,
            press: () {},
          )
        ],
      ),
    );
  }
}
