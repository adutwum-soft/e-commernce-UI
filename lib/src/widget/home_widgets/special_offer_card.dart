import 'package:e_commerce_ui/src/res/dimen.dart';
import 'package:e_commerce_ui/src/widget/home_widgets/session_title.dart';
import 'package:flutter/material.dart';

import 'special_offer.dart';

class SpecialOfferCard extends StatelessWidget {
  const SpecialOfferCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SessionTitle(
          leading: 'Special for you',
          press: () {},
        ),
        SizedBox(height: AppDimen.getProportionateScreenWidth(20)),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              SpecialOffer(
                category: 'Smartphones',
                numOfBrands: 18,
                image: 'assets/images/Image Banner 2.png',
                press: () {},
              ),
              SpecialOffer(
                category: 'Fashion',
                numOfBrands: 30,
                image: 'assets/images/Image Banner 3.png',
                press: () {},
              ),
              SizedBox(width: AppDimen.getProportionateScreenWidth(20))
            ],
          ),
        ),
      ],
    );
  }
}
