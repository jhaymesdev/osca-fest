import 'package:flutter/material.dart';

class ProductImageDetail extends StatelessWidget {
  final String imagePath;
  ProductImageDetail(this.imagePath);
  @override
  Widget build(BuildContext context) {
    final deviceSize = MediaQuery.of(context).size;
    return ClipRRect(
      borderRadius: BorderRadius.only(bottomLeft:Radius.circular(20)),
      child: Container(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: InteractiveViewer(
            minScale: 0.2,
            maxScale: 3.5,
            child: Image.asset(imagePath,
              colorBlendMode: BlendMode.modulate,
              //fit: !product.category.contains("Stickers")?BoxFit.cover:null,
              width: double.infinity,
              height: double.infinity,),
          ),
        ),
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(bottomLeft: Radius.circular(20))
        ),
        height: deviceSize.height/1.3,
        width: deviceSize.width/1.3,
      ),
    );
  }
}
