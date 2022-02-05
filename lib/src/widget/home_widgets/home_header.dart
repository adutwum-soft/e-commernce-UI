import 'package:e_commerce_ui/src/res/dimen.dart';
import 'package:flutter/material.dart';

import '../icon_botton_counter.dart';
import '../search_field.dart';

class HomeHeader extends StatelessWidget {
  const HomeHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: AppDimen.getProportionateScreenWidth(20),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const SearchField(placeholder: 'Search Product'),
          IconBottonCounter(
            svgIcon: 'assets/icons/Cart Icon.svg',
            num: '0',
            press: () {},
          ),
          IconBottonCounter(
            svgIcon: 'assets/icons/Bell.svg',
            num: '3',
            press: () {},
            notification: true,
          ),
        ],
      ),
    );
  }
}
