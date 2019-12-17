import 'package:demo/routes/productsList.dart';
import 'package:flutter/material.dart';
import '../models/list.dart';

class HomePage extends StatelessWidget {
  build(context) {
    return Scaffold(
      appBar: AppBar(
        actions: <Widget>[
          IconButton(
            color: Colors.white,
            icon: Icon(Icons.favorite),
            onPressed: () => Navigator.of(context).pushNamed('cart'),
          ),
        ],
        title: Text('Flutter Products'),
      ),
      body: ProductList(list),
    );
  }
}
