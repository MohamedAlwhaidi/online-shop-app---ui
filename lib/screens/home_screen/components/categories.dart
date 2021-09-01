import 'package:flutter/material.dart';

import '../../../constants.dart';

class Categories extends StatefulWidget {

  @override
  _CategoriesState createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
  List<String> _categories = [
    "Hand bag",
    "Jewellery",
    "Footwear",
    "Dresses",
    "Bag"
  ];
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: kDefaultPadding),
      child: SizedBox(
        height: 25,
        child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: _categories.length,
            itemBuilder: (context, index) => buildCategories(index)),
      ),
    );
  }

  Widget buildCategories(int index) {
    return GestureDetector(
      onTap: () {
        setState(() {
          _selectedIndex = index;
        });
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              _categories[index],
              style: TextStyle(
                color: _selectedIndex == index ? kTextColor : kTextLightColor,
                fontWeight: FontWeight.bold,
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: kDefaultPadding / 4),
              height: 2,
              width: 30,
              decoration: BoxDecoration(
                color:
                    _selectedIndex == index ? Colors.black : Colors.transparent,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
