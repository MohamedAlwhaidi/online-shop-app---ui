import 'package:flutter/material.dart';

class Product {
  final String image, title, description;

  final int price, size, id;
  final Color color;

  Product({
    required this.id,
    required this.title,
    required this.price,
    required this.size,
    this.description =
        "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since. When an unknown printer took a galley.",
    required this.image,
    required this.color,
  });
}
