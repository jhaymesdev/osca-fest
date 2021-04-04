import 'package:flutter/widgets.dart';
import 'package:osca_fest/provider_management/products.dart';

class ListOfProduct with ChangeNotifier{

  List<Products> _products = [
    Products(imagePath: "asset/image/opensource2.png",productName: "Hacktober",category: "Shirts",id: "s1",price: 9.99),
    Products(imagePath: "asset/image/sweat_shirt1.jpg",productName: "!Fuck me sweatshirt",category: "Sweatshirts",id: "sw1",price: 12.99),
    Products(imagePath: "asset/image/opensource3.png",productName: "Dev dab",category:"Shirts",id: "s2",price: 8.99),
    Products(imagePath: "asset/image/sweat_shirt2.jpg",productName: "!Fuck me Sweatshirt",category:"Sweatshirts",id: "sw2",price: 13.39),
    Products(imagePath: "asset/image/opensource5.jpg",productName: "Sail",category:"Shirts",id: "s3",price: 4.99),
      Products(imagePath: "asset/image/sweat_shirt4.jpg",productName: "Open Source sweatshirt",category:"Sweatshirts",id: "sw4",price: 28.0),
    Products(imagePath: "asset/image/opensource7.png",productName: "Indeed",category: "Shirts",id: "s5",price: 9.79),
    Products(imagePath: "asset/image/sweat_shirt5.jpg",productName: "Devops Sweatshirts",category: "Sweatshirts",id: "sw5",price: 19.99),
    Products(imagePath: "asset/image/opensource8.jpg",productName: "!Bugs",category: "Shirts",id: "s6",price: 39.99),
    Products(imagePath: "asset/image/sweat_shirt6.jpg",productName: "It works?",category: "Sweatshirts",id: "sw6",price: 90.99),
    Products(imagePath: "asset/image/opensource9.jpg",productName: "Devops Shirt",category: "Shirts",id: "s7",price: 100.99),
    Products(imagePath: "asset/image/opensource10.jpg",productName: "!Fuck me shirt",category: "Shirts",id: "s8",price: 64.99),
    Products(imagePath: "asset/image/sweat_shirt6.jpg",productName: "It works?",category: "Sweatshirts",id: "sw7",price: 51.99),
    Products(imagePath: "asset/image/stickers3.jpg",productName: "Native script",category: "Stickers",id: "st1",price: 1.99),
    Products(imagePath: "asset/image/stickers2.jpeg",productName: "DPSOROID Sticker",category: "Stickers",id: "st2",price: 0.4),
    Products(imagePath: "asset/image/stickers1.png",productName: "Face Sticker",category: "Stickers",id: "st3",price:1.97),
    Products(imagePath: "asset/image/stickers4.jpg",productName: "Offline Sticker",category: "Stickers",id: "st4",price:0.69),
    Products(imagePath: "asset/image/stickers5.jpg",productName: "Hate Sticker",category: "Stickers",id: "st5",price:4.99),
    Products(imagePath: "asset/image/stickers6.jpg",productName: "CSS sticker",category: "Stickers",id: "st6",price:6.99),
    Products(imagePath: "asset/image/stickers7.jpg",productName: "GitHub Sticker",category: "Stickers",id: "st7",price:5.59),
    Products(imagePath: "asset/image/stickers8.jpg",productName: "!Fuck me Sticker",category: "Stickers",id: "st8",price:4.34),
    Products(imagePath: "asset/image/sca.jpg",productName: "SCA sweatshirt",category: "Sweatshirts",id: "sw8",price:45.34),
    Products(imagePath: "asset/image/yellowSweats.jpg",productName: "Osca fest",category: "Sweatshirts",id: "sw9",price:45.34),
  ];

  /*
  Products findByCategory(String category){
    return _products.any((element) => element.category = category);
  }

   */
  List<Products> get products {
    return [..._products];
  }
  List<Products> get getSweatshirts {
    return _products.where((element) => element.category =="Sweatshirt").toList();
  }
  List<Products> get getFavorites{
    return _products.where((element) => element.isFavourite ==true).toList();
  }
  Products findById(String? productId){
    return _products.firstWhere((element) => element.id == productId);
  }
  /*
  Products findByCategory(String category){
    List<Products> categoryProduct = [];
    if(_products.any((element) => element.category.contains(category))){
      _products = categoryProduct;
    }
    return categoryProduct;
  }
   */



}
