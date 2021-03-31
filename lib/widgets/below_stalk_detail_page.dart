import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../provider_management/products.dart';

class BelowStalk extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Consumer<Products>(
            builder: (ctx, product, _) => Card(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: IconButton(
                  icon: Icon(
                    product.isFavourite ? Icons.favorite : Icons.favorite_border,
                  ),
                  color: Theme.of(context).primaryColor,
                  onPressed: () {
                    product.toggleFavouriteStatus();
                  },
                ),
              ),
            ),
          ),
          RaisedButton(
            color: Colors.orangeAccent,
            onPressed:(){},
            shape: RoundedRectangleBorder(borderRadius: new BorderRadius.circular(30.0)),
            child: Container(
                width: 100,height: 50,
                child: Center(child: Text("Add to bag"))
            ),
          ),
        ],
      ),
    );
  }
}
