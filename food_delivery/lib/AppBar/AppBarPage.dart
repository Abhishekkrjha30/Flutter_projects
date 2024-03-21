import 'package:flutter/material.dart';
import 'package:food_delivery/Cart/Cart.dart';

class AppBarPage extends StatefulWidget implements PreferredSizeWidget{
  String title;  int count;
  AppBarPage(this.title,this.count);
  @override
  State<StatefulWidget> createState() {

    return AppBarPageState();
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(kToolbarHeight);

}

class AppBarPageState extends State<AppBarPage>{
  @override
  Widget build(BuildContext context) {
    return AppBar(
        backgroundColor: Theme.of(context).backgroundColor,
        iconTheme: IconThemeData(color: Colors.green),
        title: Text('${widget.title}',style: TextStyle(fontWeight: FontWeight.bold),),
        centerTitle: true,
        actions: [
          IconButton(onPressed: (){}, icon: Icon(Icons.map)),
          Padding(
            padding: const EdgeInsets.only(right: 8),
            child: Badge(
              label: Text(
                '${widget.count}',style: TextStyle(fontSize: 14),
              ),
              backgroundColor: Colors.red,
               alignment: Alignment.topRight,
               child:IconButton(onPressed: (){
                 Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Cart()));
               },icon: Icon(Icons.shopping_cart_outlined,)),
             ),
          ),
        ],

      );
  }
}


