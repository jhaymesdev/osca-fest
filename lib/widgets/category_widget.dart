import 'package:flutter/material.dart';
import 'package:osca_fest/provider_management/item_category.dart';
import 'package:provider/provider.dart';

class CategoryWidget extends StatefulWidget {
  String?   currentCategory;
  CategoryWidget({this.currentCategory});
  @override
  _CategoryWidgetState createState() => _CategoryWidgetState();
}

class _CategoryWidgetState extends State<CategoryWidget> {
  @override
  Widget build(BuildContext context) {
    final categoryItems = Provider.of<CategoryList>(context).categories;
    return  Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: 40,
        width: MediaQuery.of(context).size.width,
        child: ListView.builder(
          itemCount: categoryItems.length,
          itemBuilder: (context, index) => Padding(
            padding: const EdgeInsets.all(2.0),
            child: RaisedButton(
              onPressed: () {
                setState(() {
                  widget.currentCategory = categoryItems[index].nameOfCategory;
                });
              },
              child: Text("${categoryItems[index].nameOfCategory}"),
              color: Colors.white24,
              shape: RoundedRectangleBorder(
                  borderRadius:
                  new BorderRadius.circular(30.0)),
            ),
          ),
          scrollDirection: Axis.horizontal,
        ),
      ),
    );
  }
}
