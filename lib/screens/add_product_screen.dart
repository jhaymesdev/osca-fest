import 'package:flutter/material.dart';

class AddProductScreen extends StatefulWidget {
  static const routeName= "addProducts";
  @override
  _AddProductScreenState createState() => _AddProductScreenState();
}

class _AddProductScreenState extends State<AddProductScreen> {
  GlobalKey _form = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            Text("ADMINS ONLY!"),
            Icon(Icons.warning),
          ],
        ),
        actions: [
          IconButton(icon: Icon(Icons.save), onPressed: (){})
        ],
      ),
      body: Column(
        children: [
          SizedBox(height: 20,),
                  Form(
              child: Column(
            children: [
            TextFormField(),
            ],
          ))
        ],
      ),
    );
  }
}
