import 'dart:collection';

import 'package:flutter/material.dart';

class CategoriesProvider extends ChangeNotifier {
  List<String> _categories = [
    "Hand bag",
    "Jewellery",
    "Footwear",
    "Dresses",
    "Bag"
  ];
  int _selectedIndex = 0;

  int get selectedIndex => _selectedIndex;

  UnmodifiableListView<String> get categories =>
      UnmodifiableListView(_categories);

  int get categoryCount => _categories.length;

  void updateSelectedIndex(int index) {
    _selectedIndex = index;
    notifyListeners();
  }
}
