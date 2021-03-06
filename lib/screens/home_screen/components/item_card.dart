import 'package:flutter/material.dart';
import 'package:online_shop_app/models/product.dart';

import '../../../constants.dart';

class ItemCard extends StatelessWidget {
  final Product product;
  final Function() press;

  const ItemCard({Key? key, required this.product, required this.press})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Container(
              padding: EdgeInsets.all(kDefaultPadding),
              decoration: BoxDecoration(
                color: product.color,
                borderRadius: BorderRadius.circular(16.0),
              ),
              child: Hero(
                tag: product.id,
                child: Image.asset(
                  product.image,
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          SizedBox(
            height: kDefaultPadding / 2,
          ),
          RichText(
            text: TextSpan(
              text: product.title + '\n',
              style: TextStyle(color: kTextColor),
              children:  <TextSpan>[
                TextSpan(
                    text: '\$${product.price}',
                    style: TextStyle(fontWeight: FontWeight.bold)),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
