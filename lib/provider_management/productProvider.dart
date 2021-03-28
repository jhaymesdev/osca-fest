import 'package:flutter/widgets.dart';
import 'package:osca_fest/provider_management/products.dart';

class ListOfProduct with ChangeNotifier{

  List<Products> _products = [
    Products(imagePath: "asset/image/opensource2.png",category: "Shirts",id: "s1",price: 9.99),
    Products(imagePath: "asset/image/sweat_shirt1.jpg",category: "Sweatshirts",id: "sw1",price: 12.99),
    Products(imagePath: "asset/image/opensource3.png",category: "Shirts",id: "s2",price: 8.99),
    Products(imagePath: "asset/image/sweat_shirt2.jpg",category: "Sweatshirts",id: "sw2",price: 13.39),
    Products(imagePath: "asset/image/opensource5.jpg",category: "Shirts",id: "s3",price: 4.99),
    Products(imagePath: "asset/image/sweat_shirt3.jpg",category: "Sweatshirts",id: "sw3",price: 29.99),
    Products(imagePath: "asset/image/opensource6.png",category: "Shirts",id: "s4",price: 3.00),
    Products(imagePath: "asset/image/sweat_shirt4.jpg",category: "Sweatshirts",id: "sw4",price: 28.0),
    Products(imagePath: "asset/image/opensource7.png",category: "Shirts",id: "s5",price: 9.79),
    Products(imagePath: "asset/image/sweat_shirt5.jpg",category: "Sweatshirts",id: "sw5",price: 19.99),
    Products(imagePath: "asset/image/opensource8.jpg",category: "Shirts",id: "s6",price: 9.99),
    Products(imagePath: "asset/image/sweat_shirt6.jpg",category: "Sweatshirts",id: "sw6",price: 90.99),
    Products(imagePath: "asset/image/opensource9.jpg",category: "Shirts",id: "s7",price: 10.99),
    Products(imagePath: "asset/image/opensource10.jpg",category: "Shirts",id: "s8",price: 6.99),
    Products(imagePath: "asset/image/sweat_shirt6.jpg",category: "Sweatshirts",id: "sw6",price: 5.99),
  ];

  Products findByCategory(String category){
    return _products.firstWhere((element) => element.category == category);
  }
  List<Products> get products {
    return [..._products];
  }

}
