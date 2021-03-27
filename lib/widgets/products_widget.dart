
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:osca_fest/widgets/category_widget.dart';

import 'cart_item_counter.dart';

class ProductsPage extends StatefulWidget {
  final Function toggleAnimated;
  ProductsPage(this.toggleAnimated);
  @override
  _ProductsPageState createState() => _ProductsPageState();
}

class _ProductsPageState extends State<ProductsPage>with SingleTickerProviderStateMixin {
  int cartItemCounter = 0;
  AnimationController _animationController ;
  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
        vsync: this,
        duration: Duration(milliseconds: 300),);
  }
  void toggleAnimation() => _animationController.isDismissed ?
  _animationController.forward():_animationController.reverse();
  @override
  Widget build(BuildContext context) {
    return  SingleChildScrollView(
      child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              children: [
                GestureDetector(
                  onDoubleTap: toggleAnimation,
                  child: Image.asset(
                    "asset/image/open_source.png",
                    height: 15,
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GestureDetector(
                      onTap: widget.toggleAnimated,
                      child: Image.asset(
                        "asset/image/icon_Image2.png",
                        height: 12,
                      ),
                    ),
                    CartItemCountWidget(cartItemCounter),
                  ],
                ),
                CategoryWidget(),
              ],
            ),
          )),
    );
  }
}
