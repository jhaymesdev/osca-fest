import 'package:flutter/material.dart';
import 'package:osca_fest/screens/add_product_screen.dart';
import 'package:osca_fest/screens/profile_page.dart';

class MyDrawer extends StatefulWidget {
  @override
  _MyDrawerState createState() => _MyDrawerState();
}

class _MyDrawerState extends State<MyDrawer> {
  Widget myListTile({String? textStuff,pageRoute, Icon? leadingIcon, }){
    return ListTile(
      leading:leadingIcon,
      title: Text("$textStuff"),
      onTap:()=>Navigator.of(context).pushNamed(pageRoute),
    );
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      //drawer
      color: Color(0xffF67E07),
      child: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: CircleAvatar(
                  radius: 30,
                  backgroundImage: AssetImage(
                    'asset/image/profile_image.jpg',
                  ),
                ),
              ),
              SizedBox(height: 30,),
              myListTile(leadingIcon: Icon(Icons.person), textStuff: 'Profile',pageRoute: ProfilePage.routeName),
              myListTile(leadingIcon: Icon(Icons.favorite), textStuff: 'Favourites',),
              myListTile(leadingIcon: Icon(Icons.new_releases), textStuff: 'News',),
              myListTile(leadingIcon: Icon(Icons.add_box), textStuff: 'Add product',pageRoute: AddProductScreen.routeName),
              myListTile(leadingIcon: Icon(Icons.settings), textStuff: 'Settings',),
            ],
          ),
        ),
      ),
    );
  }
}