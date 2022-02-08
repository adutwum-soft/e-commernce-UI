import 'package:e_commerce_ui/src/res/dimen.dart';
import 'package:flutter/material.dart';

class TopRoundedContainer extends StatelessWidget {
  final Color color;
  final Widget child;
  const TopRoundedContainer({
    Key? key,
    required this.color,
    required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      padding: EdgeInsets.only(
        top: AppDimen.getProportionateScreenHeight(20),
      ),
      decoration: BoxDecoration(
        color: color,
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(40),
          topRight: Radius.circular(40),
        ),
      ),
      child: child,
    );
  }
}
