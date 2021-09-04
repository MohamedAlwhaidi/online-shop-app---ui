import 'package:flutter/material.dart';
import 'package:online_shop_app/provider/product_provider.dart';
import 'package:online_shop_app/screens/details_screen/details_screen.dart';
import 'package:provider/provider.dart';

import '../../../constants.dart';
import 'item_card.dart';

class ProductList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<ProductProvider>(
      builder: (context, productData, child) {
        return GridView.builder(
          padding: EdgeInsets.all(kDefaultPadding),
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            mainAxisSpacing: kDefaultPadding,
            crossAxisSpacing: kDefaultPadding,
            childAspectRatio: 0.75,
            crossAxisCount: 2,
          ),
          itemCount:productData.productCount,
          itemBuilder: (context, index) {
            final product =productData.products[index];
            return ItemCard(
              product: product,
              press: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => DetailsScreen(
                      product: product,
                    ),
                  ),
                );
              },
            );
          },
        );
      },
    );
  }
}
