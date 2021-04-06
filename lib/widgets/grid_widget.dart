import 'package:flutter/material.dart';
import 'package:osca_fest/provider_management/products.dart';
import '../provider_management/productProvider.dart';
import 'package:osca_fest/widgets/grid_item.dart';
import 'package:provider/provider.dart';


class GridWidget extends StatelessWidget {
  final String? categoryPressed;
  GridWidget({this.categoryPressed});

  List<Products>? switchStatement(BuildContext context){
    switch(categoryPressed){
      case "All Products": {
        return Provider.of<ListOfProduct>(context).products;
      }
      case "Sweatshirts":{
        return  Provider.of<ListOfProduct>(context).getSweatshirts;
      }
      case "Furniture":{
        return  Provider.of<ListOfProduct>(context).getFurniture;
      }
      case "Stickers":{
        return  Provider.of<ListOfProduct>(context).getStickers;
      }
      case "Bags":{
        return  Provider.of<ListOfProduct>(context).getBags;
      }
      case "Shirts":{
        return  Provider.of<ListOfProduct>(context).getShirts;
      }

    }
  }
  @override
  Widget build(BuildContext context) {
    final products = switchStatement(context);
    return products!.isEmpty ?Center(child: Text("Nothing here"),):GridView.builder(gridDelegate:
    SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,mainAxisSpacing: 5,
        crossAxisSpacing: 7,
        childAspectRatio: 3.7 / 5),
        itemBuilder: (context, index) => ChangeNotifierProvider.value(
          value: products![index],
          child:GridItem(),
        ),
      itemCount: products!.length,
    );
  }
}
