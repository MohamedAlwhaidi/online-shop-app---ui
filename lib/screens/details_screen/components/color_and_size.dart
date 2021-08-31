import 'package:flutter/material.dart';
import 'package:online_shop_app/models/product.dart';

import '../../../constants.dart';
import 'dot_color.dart';

class ColorAndSize extends StatelessWidget {
  const ColorAndSize({
    Key? key,
    required this.product,
  }) : super(key: key);

  final Product product;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Color"),
                  SizedBox(
                    height: 5,
                  ),
                  Row(
                    children: [
                      DotColor(
                        color: Color(0xFF356C95),
                        isSelected: true,
                      ),
                      DotColor(
                        color: Color(0xFFF8C078),
                      ),
                      DotColor(
                        color: Color(0xFFA29B9B),
                      ),
                    ],
                  )
                ],
              ),
            ),
            Expanded(
              child: RichText(
                text: TextSpan(
                  style: TextStyle(color: kTextColor),
                  children: <TextSpan>[
                    TextSpan(
                      text: 'Size\n',
                    ),
                    TextSpan(
                      text: '${product.size} cm',
                      style: Theme.of(context).textTheme.headline5?.copyWith(
                            fontWeight: FontWeight.bold,
                          ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
