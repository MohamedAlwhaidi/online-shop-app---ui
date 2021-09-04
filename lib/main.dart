import 'package:flutter/material.dart';
import 'package:online_shop_app/constants.dart';
import 'package:online_shop_app/provider/categories_provider.dart';
import 'package:online_shop_app/provider/product_provider.dart';
import 'package:online_shop_app/screens/home_screen/home_screen.dart';
import 'package:provider/provider.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => ProductProvider()),
        ChangeNotifierProvider(create: (_) => CategoriesProvider()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: "Shopp App",
        theme: ThemeData(
          textTheme: Theme.of(context).textTheme.apply(bodyColor: kTextColor),
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        home: HomeScreen(),
      ),
    );
  }
}
