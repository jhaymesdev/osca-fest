import 'package:flutter/material.dart';
import 'package:osca_fest/provider_management/item_category.dart';
import 'package:osca_fest/provider_management/productProvider.dart';
import 'package:osca_fest/widgets/category_widget.dart';
import 'package:osca_fest/widgets/grid_widget.dart';
import 'package:provider/provider.dart';
import 'cart_item_counter.dart';
import 'grid_item.dart';

class ProductsPage extends StatefulWidget {
  final Function toggleAnimated;
  ProductsPage(this.toggleAnimated);
  @override
  _ProductsPageState createState() => _ProductsPageState();
}

class _ProductsPageState extends State<ProductsPage>with SingleTickerProviderStateMixin {
  String currentCategory = "";

  int cartItemCounter = 0;
  late AnimationController _animationController ;
  @override
  void initState() {
    super.initState();
    currentCategory = "All Products";
    _animationController = AnimationController(
        vsync: this,
        duration: Duration(milliseconds: 300),);
  }
  void toggleAnimation() => _animationController.isDismissed ?
  _animationController.forward():_animationController.reverse();
  @override
  Widget build(BuildContext context) {
    final productsData = Provider.of<ListOfProduct>(context);
    final products = productsData.products;
    return  SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              GestureDetector(
                /*
                onTap: (){
                  setState(() {
                    products..shuffle();
                  });
                },

                 */
                child: Image.asset(
                  "asset/image/open_source.png",
                  height: 15,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: widget.toggleAnimated as void Function()?,
                    child: Image.asset(
                      "asset/image/icon_Image2.png",
                      height: 12,
                    ),
                  ),
                  CartItemCountWidget(cartItemCounter),
                ],
              ),
              CategoryWidget(),
              Expanded(
                child: GridWidget()
              )
             // GridWidget(),
            ],
          ),
        ));
  }
}
