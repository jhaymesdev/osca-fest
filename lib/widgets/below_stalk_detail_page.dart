import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../provider_management/products.dart';

class BelowStalk extends StatefulWidget {
  final String? nameOfProduct,description;
  final double? productPrice;
  BelowStalk({this.nameOfProduct, this.description,this.productPrice});

  @override
  _BelowStalkState createState() => _BelowStalkState();
}

class _BelowStalkState extends State<BelowStalk> with SingleTickerProviderStateMixin{
  @override
  void initState() {
    AnimationController _animationController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 2),
    );

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("${widget.nameOfProduct}",style: TextStyle(fontSize: 25,letterSpacing: 0),),
              Consumer<Products>(
                builder: (ctx, product, _) => Card(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: IconButton(
                      icon: Icon(
                        product.isFavourite ? Icons.favorite : Icons.favorite_border,
                      ),
                      color: Theme.of(context).primaryColor,
                      onPressed: () {
                        product.toggleFavouriteStatus();
                      },
                    ),
                  ),
                ),
              ),
            ],
          ),
          Text("${widget.description}", style: TextStyle(),textAlign: TextAlign.center,),
          /*
          Container(
            height: 100,
            child: ListView.builder(itemBuilder: (context, index) => Container(
              width: 100,height: 100,
            ),),
          ),

           */
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("\$ ${widget.productPrice}",style: TextStyle(fontSize: 30),),
                Align(
                  alignment: Alignment.bottomRight,
                  child: RaisedButton(
                    color: Colors.orangeAccent,
                    onPressed:(){
                      // showBottomSheet(
                      //     context: context,
                      //     builder: (context) => AnimatedContainer(
                      //       decoration: BoxDecoration(
                      //         color: Colors.grey,
                      //           borderRadius: BorderRadius.only(topLeft: Radius.circular(20),topRight:                                    Radius.circular(20))
                      //       ),
                      //       duration: const Duration(seconds: 2),
                      //       curve: Curves.easeInOut,
                      //       child: Text("What is up"),
                      //
                      //     ),
                      // );
                    },
                    shape: RoundedRectangleBorder(borderRadius: new BorderRadius.circular(30.0)
                    ),
                    child: Container(
                        width: 100,height: 50,
                        child: Center(child: Text("Add to bag"))
                    ),
                  ),
                ),

              ],
            ),
          ),
        ],
      ),
    );
  }
}
