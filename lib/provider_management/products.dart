import 'package:flutter/cupertino.dart';
import 'package:osca_fest/widgets/products_widget.dart';

class Products with ChangeNotifier{
  final String category,imagePath,id;
  bool isFavourite;
  final double price;

  Products({this.category,this.imagePath,this.isFavourite = false,this.id, this.price});
}


