import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:osca_fest/provider_management/products.dart';

class PageStackHolder extends StatelessWidget {
  bool? isClothing;
  PageStackHolder(this.isClothing);
  Widget circleStuff({Function navigate, Widget child}){
    return GestureDetector(
      onTap: navigate,
      child: CircleAvatar(
        backgroundColor: Colors.white,
        radius: 25,
        child: child,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final deviceSize =  MediaQuery.of(context).size;
    final style =  TextStyle(color: Colors.orangeAccent,fontSize: 25);
    return  Container(
      color:Colors.blue.shade700.withOpacity(0.10),
      height: deviceSize.height/1.3,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            color:Colors.blue.shade700.withOpacity(0.0),
            alignment: Alignment.topLeft,
            height: deviceSize.height/1.3,
            width: deviceSize.width-deviceSize.width/1.3,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SafeArea(
                    child: Center(
                        child: circleStuff(navigate:()=>Navigator.of(context).pop(),
                           child: Icon(Icons.arrow_back_ios))
                    ),
                  ),
                  SizedBox(height: 70,),
               isClothing? Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      circleStuff(child: Text("S",style:style)),
                      circleStuff(child: Text("L",style:style)),
                      circleStuff(child: Text("X",style:style)),
                      circleStuff(child: Text("XL",style:style)),
                    ],
                  ),
                ):null,
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
