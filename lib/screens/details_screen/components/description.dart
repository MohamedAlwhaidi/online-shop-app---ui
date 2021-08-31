import 'package:flutter/material.dart';
import 'package:online_shop_app/models/product.dart';

import '../../../constants.dart';

class Description extends StatelessWidget {
  const Description({
    Key? key,
    required this.product,
  }) : super(key: key);

  final Product product;

  @override
  Widget build(BuildContext context) {
    return Text(
      product.description,
      style: TextStyle(color: kTextColor, wordSpacing: 2, height: 1.5),
    );
  }
}
