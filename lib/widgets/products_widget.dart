import 'package:flutter/material.dart';
import 'package:osca_fest/provider_management/item_category.dart';
import 'package:osca_fest/widgets/grid_widget.dart';
import 'package:provider/provider.dart';
import 'cart_item_counter.dart';

class ProductsPage extends StatefulWidget {
  final Function toggleAnimated;
  ProductsPage(this.toggleAnimated);
  @override
  _ProductsPageState createState() => _ProductsPageState();
}

class _ProductsPageState extends State<ProductsPage>with SingleTickerProviderStateMixin {
  String currentCategory = "";

  int cartItemCounter = 0;
  AnimationController _animationController ;
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
    final categoryItems = Provider.of<CategoryList>(context).categories;
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
                Container(
                  height: 40,
                  width: MediaQuery.of(context).size.width,
                  child: ListView.builder(
                    itemCount: categoryItems.length,
                    itemBuilder: (context, index) => Padding(
                      padding: const EdgeInsets.all(2.0),
                      child: RaisedButton(
                        onPressed: () {
                          setState(() {
                            currentCategory = "${categoryItems[index].nameOfCategory}";
                          });
                        },
                        child: Text(
                            "${categoryItems[index].nameOfCategory}"),
                        color: Colors.white24,
                        shape: RoundedRectangleBorder(
                            borderRadius:
                            new BorderRadius.circular(30.0)),
                      ),
                    ),
                    scrollDirection: Axis.horizontal,
                  ),
                ),
                GridWidget(currentCategory),
              ],
            ),
          )),
    );
  }
}
