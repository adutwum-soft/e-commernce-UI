import 'package:e_commerce_ui/src/models/product.dart';
import 'package:e_commerce_ui/src/res/colors.dart';
import 'package:e_commerce_ui/src/res/dimen.dart';
import 'package:flutter/material.dart';

class ProductImages extends StatefulWidget {
  final Product product;
  const ProductImages({
    Key? key,
    required this.product,
  }) : super(key: key);

  @override
  State<ProductImages> createState() => _ProductImagesState();
}

class _ProductImagesState extends State<ProductImages> {
  int selectedImage = 0;

  @override
  Widget build(BuildContext context) {
    var pro = widget.product;
    return Column(
      children: [
        SizedBox(
          width: AppDimen.getProportionateScreenWidth(240),
          child: AspectRatio(
            aspectRatio: 1,
            child: Image.asset(widget.product.images[selectedImage]),
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ...List.generate(
              pro.images.length,
              (index) => _buildSmallPreview(index),
            ),
          ],
        ),
      ],
    );
  }

  InkWell _buildSmallPreview(int index) {
    return InkWell(
      onTap: () {
        setState(() {
          selectedImage = index;
        });
      },
      child: Container(
        margin:
            EdgeInsets.only(right: AppDimen.getProportionateScreenHeight(15)),
        padding: EdgeInsets.all(AppDimen.getProportionateScreenWidth(8)),
        height: AppDimen.getProportionateScreenHeight(48),
        width: AppDimen.getProportionateScreenWidth(48),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          border: Border.all(
              color: selectedImage == index
                  ? AppColors.kPrimaryColor
                  : Colors.transparent),
        ),
        child: Image.asset(widget.product.images[index]),
      ),
    );
  }
}
