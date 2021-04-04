import 'package:flutter/material.dart';
import '../provider_management/productProvider.dart';
import 'package:osca_fest/widgets/grid_item.dart';
import 'package:provider/provider.dart';


class GridWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final productsData = Provider.of<ListOfProduct>(context);
    final products = productsData.products;
    return GridView.builder(gridDelegate:
    SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,mainAxisSpacing: 5,
        crossAxisSpacing: 7,
        childAspectRatio: 3.7 / 5),
        itemBuilder: (context, index) => ChangeNotifierProvider.value(
          value: products[index],
          child:GridItem(),
        ),
      itemCount: products.length,
    );
  }
}
