import 'package:flutter/material.dart';
import 'package:online_shop_app/constants.dart';
import 'package:online_shop_app/models/product.dart';
import 'package:online_shop_app/screens/details_screen/components/product_title_with_image.dart';

import 'add_to_cart.dart';
import 'color_and_size.dart';
import 'count_with_fav_btn.dart';
import 'description.dart';

class Body extends StatelessWidget {
  final Product product;

  const Body({Key? key, required this.product}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Size _size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(
            height: _size.height,
            child: Stack(
              children: [
                Container(
                  margin: EdgeInsets.only(top: _size.height * 0.3),
                  padding: EdgeInsets.only(
                      top: _size.height * 0.15,
                      right: kDefaultPadding,
                      left: kDefaultPadding),
                  height: 500,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(24),
                      topRight: Radius.circular(24),
                    ),
                  ),
                  child: Column(
                    children: [
                      ColorAndSize(product: product),
                      SizedBox(
                        height: kDefaultPadding,
                      ),
                      Description(product: product),
                      SizedBox(
                        height: kDefaultPadding * 2,
                      ),
                      CountWithFavBtn(),
                      SizedBox(
                        height: kDefaultPadding * 2,
                      ),
                      AddToCart(product: product)
                    ],
                  ),
                ),
                ProductTitleWithImage(product: product),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
