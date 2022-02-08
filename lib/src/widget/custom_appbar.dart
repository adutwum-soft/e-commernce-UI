import 'package:e_commerce_ui/src/res/dimen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'details_widget/rounded_icon.dart';

class CustomAppBar extends StatelessWidget implements PreferredSize {
  final double rating;
  const CustomAppBar({
    Key? key,
    required this.rating,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: AppDimen.getProportionateScreenWidth(20),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            RoundedIcon(
              iconData: Icons.arrow_back_ios,
              press: () => Navigator.pop(context),
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 5),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(14),
              ),
              child: Row(
                children: [
                  Text(
                    rating.toString(),
                    style: const TextStyle(
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  const SizedBox(width: 5),
                  SvgPicture.asset('assets/icons/Star Icon.svg'),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget get child => throw UnimplementedError();

  @override
  Size get preferredSize => Size.fromHeight(AppBar().preferredSize.height);
}
