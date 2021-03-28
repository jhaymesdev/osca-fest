import 'package:flutter/material.dart';
import './provider_management/item_category.dart';
import './provider_management/productProvider.dart';
import './provider_management/products.dart';
import 'package:provider/provider.dart';
import './screens/home_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (BuildContext context) => CategoryList(),),
        ChangeNotifierProvider(create: (BuildContext context) => Products(),),
        ChangeNotifierProvider(create: (BuildContext context) => ListOfProduct(),),
      ],
      child: MaterialApp(
        title: 'OSCA-FEST',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch:Colors.blue,
        ),
        home: HomePage(),
      ),
    );
  }
}

