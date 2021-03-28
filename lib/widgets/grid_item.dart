import 'package:flutter/material.dart';
import 'package:osca_fest/provider_management/products.dart';
import 'package:provider/provider.dart';

class GridItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final category = Provider.of<Products>(context);
    return GridTile(child: Container(
      child: Expanded(
        child: Column(
          children: [
            Image.asset("${category.imagePath}"),
            Text(category.price.toStringAsFixed(2),style: TextStyle(fontSize: 30,fontWeight: FontWeight.w700),),
          ],
        ),
      ),
    ));
  }
}
