import 'package:flutter/cupertino.dart';
import 'package:osca_fest/widgets/products_widget.dart';

class Products with ChangeNotifier{
  final String imagePath,id,productName;
  bool isFavourite;
  final double price;
  final String category;

  Products({this.category,this.imagePath,this.isFavourite = false,this.id, this.price, this.productName});

  toggleFavouriteStatus(){
    isFavourite = !isFavourite;
    notifyListeners();
  }
}


