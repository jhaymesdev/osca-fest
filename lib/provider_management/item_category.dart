import 'package:flutter/cupertino.dart';

class ItemCategory{
  final String nameOfCategory;

  ItemCategory(this.nameOfCategory);
}

class CategoryList with ChangeNotifier{
  
  List<ItemCategory> _categories = [
    ItemCategory("All Products"),
    ItemCategory("Sweatshirts"),
    ItemCategory("Furniture"),
    ItemCategory("Stickers"),
    ItemCategory("Bags"),
    ItemCategory("Shirts"),

  ];

  List<ItemCategory> get categories {
    return [..._categories];
  }

}