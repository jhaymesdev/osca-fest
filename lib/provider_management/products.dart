import 'package:osca_fest/widgets/products_widget.dart';

class Products{
  final String category,imagePath;
  bool isFavourite;

  Products({this.category,this.imagePath,this.isFavourite = false});
}


class ListOfProduct{

  List<Products> _products = [
    Products()
  ];
}