import 'package:e_commerce_ui/src/res/colors.dart';
import 'package:e_commerce_ui/src/res/dimen.dart';
import 'package:flutter/material.dart';

class SearchField extends StatelessWidget {
  final String placeholder;
  const SearchField({
    Key? key,
    required this.placeholder,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: AppDimen.screenWidth * 0.6, // 60% of our width
      height: 50,
      decoration: BoxDecoration(
        color: AppColors.kSecondaryColor.withOpacity(0.1),
        borderRadius: BorderRadius.circular(15),
      ),
      child: TextField(
        onChanged: (value) {
          // search here
        },
        decoration: InputDecoration(
          enabledBorder: InputBorder.none,
          focusedBorder: InputBorder.none,
          hintText: placeholder,
          prefixIcon: const Icon(Icons.search),
          contentPadding: EdgeInsets.symmetric(
            horizontal: AppDimen.getProportionateScreenWidth(20),
            vertical: AppDimen.getProportionateScreenHeight(9),
          ),
        ),
      ),
    );
  }
}
