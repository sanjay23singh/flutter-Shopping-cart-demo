import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../Provider/press.dart';

class ProductList extends StatelessWidget {
  final List<Map<String,Object>>list;
  ProductList(this.list);
  build(context) {
       final variable = Provider.of<Press>(context);
    return GridView.builder(
      padding: EdgeInsets.fromLTRB(10, 5, 10, 0),
      itemCount: list.length,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 1,
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
      ),
      itemBuilder: (context, index) => ClipRRect(
        borderRadius: BorderRadius.circular(10),
        child: GridTile(
          child: Image.network(list[index]['url']),
          footer: GridTileBar(
            backgroundColor: Colors.black38,
            title: Center(child: Text(list[index]['id'].toString())),
            leading: IconButton(
              color: list[index]['isFav']?Colors.red:list[index]['itemColor'],
              icon: Icon(Icons.shopping_cart),
              onPressed:()=> variable.change(list[index]),
            ),
          ),
        ),
      ),
    );
  }
}
