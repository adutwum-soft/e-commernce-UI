import 'package:e_commerce_ui/src/models/product.dart';
import 'package:e_commerce_ui/src/res/colors.dart';
import 'package:e_commerce_ui/src/res/dimen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'app_banner.dart';
import 'categories.dart';
import 'home_header.dart';
import 'popular_products.dart';
import 'product_card.dart';
import 'session_title.dart';
import 'special_offer_card.dart';

class HomeBody extends StatelessWidget {
  const HomeBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: AppDimen.getProportionateScreenWidth(30)),
            const HomeHeader(),
            SizedBox(height: AppDimen.getProportionateScreenWidth(30)),
            const AppBanner(
              title: 'A Summer Surprise',
              des: 'Cashback 20%',
            ),
            SizedBox(height: AppDimen.getProportionateScreenWidth(30)),
            const Categories(),
            SizedBox(height: AppDimen.getProportionateScreenWidth(30)),
            const SpecialOfferCard(),
            SizedBox(height: AppDimen.getProportionateScreenWidth(30)),
            const PopularProducts(),
            SizedBox(height: AppDimen.getProportionateScreenWidth(30)),
          ],
        ),
      ),
    );
  }
}
