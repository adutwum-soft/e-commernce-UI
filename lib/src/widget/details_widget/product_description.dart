import 'package:e_commerce_ui/src/models/product.dart';
import 'package:e_commerce_ui/src/res/colors.dart';
import 'package:e_commerce_ui/src/res/dimen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'product_images.dart';
import 'top_rounded_container.dart';

class ProductDescription extends StatelessWidget {
  final VoidCallback pressSeeMore;
  const ProductDescription({
    Key? key,
    required this.product,
    required this.pressSeeMore,
  }) : super(key: key);

  final Product product;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.symmetric(
            horizontal: AppDimen.getProportionateScreenWidth(20),
          ),
          child: Text(
            product.title,
            style: Theme.of(context).textTheme.headline6,
          ),
        ),
        const SizedBox(height: 5),
        Align(
          alignment: Alignment.centerRight,
          child: Container(
            padding: EdgeInsets.all(
              AppDimen.getProportionateScreenWidth(15),
            ),
            width: AppDimen.getProportionateScreenWidth(65),
            decoration: BoxDecoration(
              color: product.isFavourite
                  ? const Color(0xFFFFE6E6)
                  : const Color(0xFFF5F6F9),
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(20),
                bottomLeft: Radius.circular(20),
              ),
            ),
            child: SvgPicture.asset(
              'assets/icons/Heart Icon_2.svg',
              color: product.isFavourite
                  ? const Color(0xFFFF4848)
                  : const Color(0xFFDBDEE4),
            ),
          ),
        ),
        SizedBox(height: AppDimen.getProportionateScreenWidth(20)),
        Padding(
          padding: EdgeInsets.only(
            left: AppDimen.getProportionateScreenWidth(20),
            right: AppDimen.getProportionateScreenWidth(65),
          ),
          child: Text(
            product.description,
            maxLines: 3,
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(
            horizontal: AppDimen.getProportionateScreenWidth(20),
            vertical: 10,
          ),
          child: InkWell(
            onTap: pressSeeMore,
            child: Row(
              children: const [
                Text(
                  'See More Detail',
                  style: TextStyle(
                    color: AppColors.kPrimaryColor,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                SizedBox(width: 5),
                Icon(
                  Icons.arrow_forward_ios,
                  size: 12,
                  color: AppColors.kPrimaryColor,
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}
