import 'dart:collection';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:online_shop_app/models/product.dart';

class ProductProvider extends ChangeNotifier {
  List<Product> _products = [
    Product(
        id: 1,
        title: "Office Code",
        price: 234,
        size: 12,
        image: "assets/images/bag_1.png",
        color: Color(0xFF3D82AE)),
    Product(
        id: 2,
        title: "Belt Bag",
        price: 234,
        size: 8,
        image: "assets/images/bag_2.png",
        color: Color(0xFFD3A984)),
    Product(
        id: 3,
        title: "Hang Top",
        price: 234,
        size: 10,
        image: "assets/images/bag_3.png",
        color: Color(0xFF989493)),
    Product(
        id: 4,
        title: "Old Fashion",
        price: 234,
        size: 11,
        image: "assets/images/bag_4.png",
        color: Color(0xFFE6B398)),
    Product(
        id: 5,
        title: "Office Code",
        price: 234,
        size: 12,
        image: "assets/images/bag_5.png",
        color: Color(0xFFFB7883)),
    Product(
      id: 6,
      title: "Office Code",
      price: 234,
      size: 12,
      image: "assets/images/bag_6.png",
      color: Color(0xFFAEAEAE),
    ),
  ];

  UnmodifiableListView<Product> get products => UnmodifiableListView(_products);

  int get productCount => _products.length;
}
