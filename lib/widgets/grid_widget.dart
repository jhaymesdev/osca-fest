import 'package:flutter/material.dart';
import '../provider_management/productProvider.dart';
import 'package:osca_fest/widgets/grid_item.dart';
import 'package:provider/provider.dart';


class GridWidget extends StatelessWidget {
  final String category;
  GridWidget(this.category);
  @override
  Widget build(BuildContext context) {
    final productsData = Provider.of<ListOfProduct>(context);
    final products =productsData.findByCategory(category);
    final allProducts = productsData.products;

    return GridView.builder(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        itemBuilder: (context, index) => ChangeNotifierProvider.value(
          value: allProducts[index],
          //create: (BuildContext context) => products[index],
          child:GridItem(),
        ),
            /*:  GridTile(child: Container(
          child: Expanded(
            child: Column(
              children: [
                Image.asset("${products.imagePath[index]}"),
                Text(products.price.toStringAsFixed(2)[index],style:
                TextStyle(fontSize: 30,fontWeight: FontWeight.w700),),
              ],
            ),
          ),
        ))

             */
    );
  }
}
