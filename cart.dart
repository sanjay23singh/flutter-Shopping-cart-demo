//import 'package:demo/Provider/press.dart';
import 'package:demo/models/list.dart';
import 'package:demo/routes/productsList.dart';
import 'package:flutter/material.dart';
//import 'package:provider/provider.dart';

class Cart extends StatelessWidget {
  final List<Map<String, Object>> list2 = list.where((item) => item['isFav']).toList();
  build(context) {
    // return Consumer<Press>(
    //   builder: (_, __, ___) => 
     return Scaffold(
        appBar: AppBar(
          title: Text('Cart'),
        ),
        body: ProductList(list2),
  //    ),
    );
  }
}
