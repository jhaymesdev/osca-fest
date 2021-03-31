import 'package:flutter/material.dart';
import 'package:osca_fest/widgets/below_stalk_detail_page.dart';
import 'package:osca_fest/widgets/detail_stack_holder.dart';
import '../provider_management/productProvider.dart';
import '../provider_management/products.dart';
import '../widgets/product_image_detail.dart';
import 'package:provider/provider.dart';

class ProductDetailScreen extends StatefulWidget {
  static const routeName = "product_details";
  @override
  _ProductDetailScreenState createState() => _ProductDetailScreenState();
}

class _ProductDetailScreenState extends State<ProductDetailScreen> {
  @override
  Widget build(BuildContext context) {
    final productId = ModalRoute.of(context).settings.arguments as String;
    final product = Provider.of<ListOfProduct>(context).findById(productId);
   final deviceSize = MediaQuery.of(context).size;
    return Scaffold(
      body: Column(
        children: [
          Stack(
            alignment: Alignment.topRight,
            children: [
             PageStackHolder(product.category.contains("Sweatshirts")|| product.category.contains("Shirts")),
              ProductImageDetail(product.imagePath),
            ],
          ),
          BelowStalk(nameOfProduct: product.productName,description: product.description,),
        ],
      )
    );
  }
}
