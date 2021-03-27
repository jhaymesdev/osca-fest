import 'package:flutter/material.dart';
import 'package:osca_fest/provider_management/item_category.dart';
import 'package:provider/provider.dart';
import 'package:osca_fest/screens/home_page.dart';

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
      ],
      child: MaterialApp(
        title: 'OSCA-FEST',
        theme: ThemeData(
          primarySwatch:Colors.blue,
        ),
        home: HomePage(),
      ),
    );
  }
}

