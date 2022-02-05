import 'package:e_commerce_ui/src/res/colors.dart';
import 'package:e_commerce_ui/src/res/dimen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class IconBottonCounter extends StatelessWidget {
  final String svgIcon;
  final String num;
  final bool? notification;
  final Function? press;
  const IconBottonCounter({
    Key? key,
    required this.svgIcon,
    required this.num,
    this.notification = false,
    required this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => press!,
      borderRadius: BorderRadius.circular(50),
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          Container(
            padding: EdgeInsets.all(
              AppDimen.getProportionateScreenWidth(12),
            ),
            height: AppDimen.getProportionateScreenWidth(46),
            width: AppDimen.getProportionateScreenWidth(46),
            decoration: iconBoxDec(),
            child: SvgPicture.asset(svgIcon),
          ),
          notification == false
              ? Container()
              : Positioned(
                  top: -3,
                  right: 0,
                  child: Container(
                    height: AppDimen.getProportionateScreenWidth(16),
                    width: AppDimen.getProportionateScreenWidth(16),
                    decoration: BoxDecoration(
                      color: Colors.red,
                      shape: BoxShape.circle,
                      border: Border.all(
                        width: 1.5,
                        color: Colors.white,
                      ),
                    ),
                    child: Center(
                      child: Text(
                        num,
                        style: TextStyle(
                          fontSize: AppDimen.getProportionateScreenWidth(10),
                          height: 1,
                          color: Colors.white,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ),
                ),
        ],
      ),
    );
  }

  BoxDecoration iconBoxDec() {
    return BoxDecoration(
      color: AppColors.kSecondaryColor.withOpacity(0.1),
      shape: BoxShape.circle,
    );
  }
}
