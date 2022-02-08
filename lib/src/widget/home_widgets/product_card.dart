import 'package:e_commerce_ui/src/models/product.dart';
import 'package:e_commerce_ui/src/res/colors.dart';
import 'package:e_commerce_ui/src/res/dimen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ProductCard extends StatelessWidget {
  final Product product;
  final double width, aspectRetention;
  final VoidCallback press;
  const ProductCard({
    Key? key,
    required this.product,
    this.width = 140,
    this.aspectRetention = 1.02,
    required this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: AppDimen.getProportionateScreenWidth(20),
      ),
      child: GestureDetector(
        onTap: press,
        child: SizedBox(
          width: AppDimen.getProportionateScreenWidth(width),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              AspectRatio(
                aspectRatio: aspectRetention,
                child: Container(
                  padding: EdgeInsets.all(
                    AppDimen.getProportionateScreenWidth(20),
                  ),
                  decoration: BoxDecoration(
                    color: AppColors.kSecondaryColor.withOpacity(0.1),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Image.asset(product.images[0]),
                ),
              ),
              const SizedBox(height: 5),
              Text(
                product.title,
                maxLines: 2,
                style: const TextStyle(
                  color: Colors.black,
                ),
                overflow: TextOverflow.ellipsis,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    '\$${product.price}',
                    style: TextStyle(
                      fontSize: AppDimen.getProportionateScreenWidth(18),
                      fontWeight: FontWeight.w600,
                      color: AppColors.kPrimaryColor,
                    ),
                  ),
                  InkWell(
                    borderRadius: BorderRadius.circular(30),
                    onTap: () {},
                    child: Container(
                      padding: EdgeInsets.all(
                        AppDimen.getProportionateScreenWidth(8),
                      ),
                      width: AppDimen.getProportionateScreenWidth(28),
                      height: AppDimen.getProportionateScreenWidth(28),
                      decoration: BoxDecoration(
                        color: product.isFavourite
                            ? AppColors.kPrimaryColor.withOpacity(0.15)
                            : AppColors.kPrimaryColor.withOpacity(0.1),
                        shape: BoxShape.circle,
                      ),
                      child: SvgPicture.asset(
                        'assets/icons/Heart Icon_2.svg',
                        color: product.isFavourite
                            ? Colors.red
                            : const Color(0xFFDBDEE4),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
