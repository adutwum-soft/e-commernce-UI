import 'package:e_commerce_ui/src/res/dimen.dart';
import 'package:flutter/material.dart';

class SessionTitle extends StatelessWidget {
  final String leading;
  final Function? press;
  const SessionTitle({
    Key? key,
    required this.leading,
    required this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: AppDimen.getProportionateScreenWidth(20),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            leading,
            style: TextStyle(
              fontSize: AppDimen.getProportionateScreenWidth(18),
              color: Colors.black,
            ),
          ),
          GestureDetector(
            onTap: () => press,
            child: const Text(
              'see More',
            ),
          ),
        ],
      ),
    );
  }
}
