import 'package:e_commerce_ui/src/models/product.dart';
import 'package:e_commerce_ui/src/widget/custom_appbar.dart';
import 'package:e_commerce_ui/src/widget/details_widget/detail_body.dart';
import 'package:flutter/material.dart';

class Details extends StatelessWidget {
  static String routeName = "/details";
  final Product product;
  const Details({
    Key? key,
    required this.product,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF5F6F9),
      appBar: CustomAppBar(rating: product.rating),
      body: DetailBody(product: product),
    );
  }
}
