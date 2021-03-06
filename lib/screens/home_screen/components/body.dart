import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:online_shop_app/constants.dart';
import 'package:online_shop_app/screens/home_screen/components/categories.dart';
import 'package:online_shop_app/screens/home_screen/components/product_list.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
          child: Text(
            'Women',
            style: Theme.of(context)
                .textTheme
                .headline5
                ?.copyWith(fontWeight: FontWeight.bold),
          ),
        ),
        Categories(),
        Expanded(
          child: ProductList(),
        ),
      ],
    );
  }
}
