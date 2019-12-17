import 'package:demo/Provider/press.dart';
import 'package:demo/routes/cart.dart';
import 'package:provider/provider.dart';
import 'package:demo/routes/homePage.dart';
// import 'package:demo/routes/productsList.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(ChangeNotifierProvider(create: (context) => Press(), child: MyApp()));
}

class MyApp extends StatelessWidget {
  build(context) {
    return MaterialApp(
      routes: {
        '/': (context) => HomePage(),
        //'productList': (context) => ProductList(),
        'cart': (context) => Cart(),
      },
    );
  }
}
