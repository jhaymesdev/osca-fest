import 'package:flutter/material.dart';

class CartItemCountWidget extends StatelessWidget {
  final int cartItemCounter;
  CartItemCountWidget(this.cartItemCounter);
  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.topRight,
      children: [
        IconButton(icon: Icon(Icons.shopping_cart,color: Colors.orange,), onPressed: (){}),
        CircleAvatar(backgroundColor: Colors.orangeAccent,radius: 9.2,
          child: Text("$cartItemCounter",style: TextStyle(color: Colors.black,fontSize: 10),softWrap: true,),
        ),
      ],
    );
  }
}
