import 'package:flutter/material.dart';
import 'package:online_shop_app/provider/categories_provider.dart';
import 'package:provider/provider.dart';

import '../../../constants.dart';

class Categories extends StatefulWidget {
  @override
  _CategoriesState createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
  @override
  Widget build(BuildContext context) {
    return Consumer<CategoriesProvider>(
      builder: (context, categoriesData, child) {
        return Padding(
          padding: const EdgeInsets.symmetric(vertical: kDefaultPadding),
          child: SizedBox(
            height: 25,
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: categoriesData.categoryCount,
                itemBuilder: (context, index) =>
                    buildCategories(index, categoriesData)),
          ),
        );
      },
    );
  }

  Widget buildCategories(int index, CategoriesProvider categoriesData) {
    return GestureDetector(
      onTap: () {
        categoriesData.updateSelectedIndex(index);
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              categoriesData.categories[index],
              style: TextStyle(
                color: categoriesData.selectedIndex == index
                    ? kTextColor
                    : kTextLightColor,
                fontWeight: FontWeight.bold,
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: kDefaultPadding / 4),
              height: 2,
              width: 30,
              decoration: BoxDecoration(
                color: categoriesData.selectedIndex == index
                    ? Colors.black
                    : Colors.transparent,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
