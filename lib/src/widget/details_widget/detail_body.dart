import 'package:e_commerce_ui/src/models/product.dart';
import 'package:e_commerce_ui/src/res/dimen.dart';
import 'package:flutter/material.dart';

import '../default_button.dart';
import 'colors_dots.dart';
import 'product_description.dart';
import 'product_images.dart';
import 'top_rounded_container.dart';

class DetailBody extends StatelessWidget {
  final Product product;
  const DetailBody({
    Key? key,
    required this.product,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          ProductImages(product: product),
          TopRoundedContainer(
            color: Colors.white,
            child: Column(
              children: [
                ProductDescription(
                  product: product,
                  pressSeeMore: () {},
                ),
                TopRoundedContainer(
                  color: const Color(0xFFF6F7F9),
                  child: Column(
                    children: [
                      ColorsDots(product: product),
                      SizedBox(
                          height: AppDimen.getProportionateScreenWidth(20)),
                      TopRoundedContainer(
                        color: Colors.white,
                        child: Padding(
                          padding: EdgeInsets.only(
                            left: AppDimen.screenWidth * 0.15,
                            right: AppDimen.screenWidth * 0.15,
                            top: AppDimen.getProportionateScreenWidth(15),
                            bottom: AppDimen.getProportionateScreenWidth(40),
                          ),
                          child: DefaultButton(
                            text: 'Add to Card',
                            onPress: () {},
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
