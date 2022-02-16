import 'package:flutlab/Ui/Screens/home_page/home_page.dart';
import 'package:flutlab/Ui/Screens/product_details/product_details.dart';
import 'package:flutter/material.dart';

final homePage = "/home_page";
final productDetails = "/product_details";

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Shoes Store',
      theme: ThemeData(),
      initialRoute: homePage,
      onGenerateRoute: (settings) {
        if (settings.name == productDetails) {
          return MaterialPageRoute(builder: (context) => ProductDetails());
        }
        return MaterialPageRoute(builder: (context) => HomePage());
      }
    );
  }
}
