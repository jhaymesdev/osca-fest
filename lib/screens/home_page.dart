import 'dart:async';
import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:osca_fest/provider_management/item_category.dart';
import 'package:provider/provider.dart';
import 'package:flutter/material.dart';
import 'package:osca_fest/widgets/cart_item_counter.dart';
import 'package:osca_fest/widgets/category_widget.dart';
import 'package:osca_fest/widgets/myDrawer.dart';
import 'package:osca_fest/widgets/products_widget.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  int cartItemCounter = 0;
  AnimationController _animationController;
  @override
  void initState() {
    super.initState();
    _animationController =
        AnimationController(vsync: this, duration: Duration(milliseconds: 300));}
  void toggleAnimation() => _animationController.isDismissed
      ? _animationController.forward()
      : _animationController.reverse();
 // Another way to go about it below
  /*
  TickerFuture toggle(){
   if (_animationController.isDismissed){
     return _animationController.forward();
   }
   return _animationController.reverse();
  }
   */
  @override
  Widget build(BuildContext context) {
    final categoryItems = Provider.of<CategoryList>(context).categories;
    return Scaffold(
      body: AnimatedBuilder(
        animation: _animationController,
        builder: (context, child) {
          return Stack(
            children: [
              MyDrawer(),
              Transform.scale(
                scale: 1 - (_animationController.value * 0.4),
                alignment: Alignment.centerRight,
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: _animationController.isDismissed
                      ? MediaQuery.of(context).size.height
                      : MediaQuery.of(context).size.height + 100,
                  color: Color(0xff173F5F),
                  child: ProductsPage(toggleAnimation),
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
