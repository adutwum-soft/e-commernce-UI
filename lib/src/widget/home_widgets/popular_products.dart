import 'package:e_commerce_ui/src/models/product.dart';
import 'package:e_commerce_ui/src/res/dimen.dart';
import 'package:flutter/material.dart';

import 'product_card.dart';
import 'session_title.dart';

class PopularProducts extends StatelessWidget {
  const PopularProducts({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SessionTitle(
          leading: 'Popular Product',
          press: () {},
        ),
        SizedBox(height: AppDimen.getProportionateScreenWidth(20)),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ...List.generate(
                demoProducts.length,
                (index) => ProductCard(product: demoProducts[index]),
              ),
              SizedBox(width: AppDimen.getProportionateScreenWidth(20)),
            ],
          ),
        ),
      ],
    );
  }
}
