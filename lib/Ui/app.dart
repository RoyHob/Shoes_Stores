import 'package:flutlab/Ui/Screens/home_page.dart';
import 'package:flutter/material.dart';
import 'Screens/product_details.dart';

final homePage = "/home_page";
final productDetails = "/product_details";

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Shoes Store',
        theme: ThemeData(),
        // ? home: ProductDetails(),
        initialRoute: productDetails,
        onGenerateRoute: (settings) {
          if (settings.name == productDetails) {
            return MaterialPageRoute(builder: (context) => ProductDetails());
          }
          return MaterialPageRoute(builder: (context) => HomePage());
        });
  }
}
