import 'package:flutter/material.dart';
import 'package:food_delivery/Cuisines/Cuisines.dart';
import 'package:food_delivery/Home/Home.dart';
import 'package:food_delivery/Order/Orders.dart';
import 'package:food_delivery/ProfilePage/ProfilePage.dart';
import 'package:food_delivery/SearchBar/SearchBar.dart';
import 'package:food_delivery/SignUpLogIn/WelcomePage.dart';
import 'package:provider/provider.dart';

import '../Cart/Cart.dart';
import '../Provider/ThemeChanger.dart';

class DrawerPage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {

    return DrawerPageState();
  }

}

class DrawerPageState extends State<DrawerPage>{
  @override
  Widget build(BuildContext context) {
    final themeChanger=Provider.of<ThemeChanger>(context);

    return Drawer(
      child: ListView(
        children: [
          DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.green
              ), child: Column(
            children: [

              CircleAvatar(
                backgroundImage:NetworkImage('data:image/jpeg;base64,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'),
              radius: 40,
              ),
              Text("Abhishek jha",style: TextStyle(fontSize: 18,color: Colors.white),),
              Text("abhi@gmail.com",style: TextStyle(fontSize: 13,color: Colors.white),),

            ],
          ),
          ),
          Column(
            children: [
              ListTile(
                onTap: (){
                  Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context)=>HomePage(),));
                },
                title: Text("    Home"),
                leading: Icon(Icons.home_work_outlined),
              ),
              ListTile(
                onTap: (){
                  Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context)=>Cuisines(),));


                },
                title: Text("    Cuisines"),
                leading: Icon(Icons.fastfood_outlined),
              ),
              ListTile(
                onTap: (){
                  Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context)=>SearchBarPage(),));

                },
                title: Text("    Search"),
                leading: Icon(Icons.search),
              ),
              ListTile(
                onTap: (){
                  Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Cart()));

                },
                title: Text("    Cart"),
                leading: Icon(Icons.shopping_cart_outlined),
              ),
              ListTile(
                onTap: (){
                  Navigator.of(context).push(MaterialPageRoute(builder: (context)=>ProfilePage()));


                },
                title: Text("    Profile"),
                leading: Icon(Icons.person_outline),
              ),
              ListTile(
                onTap: (){
                  Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Orders()));

                },
                title: Text("    Order"),
                leading: Icon(Icons.fire_truck_outlined),
              ),
              ListTile(
                onTap: (){
                  Navigator.push(context,MaterialPageRoute(builder: (context)=>WelcomePage()));
                },
                title: Text("    Log Out"),
                leading: Icon(Icons.logout_sharp),
              ),
              Column(
                children: [
                  RadioListTile<ThemeMode>(
                    title: Text('Light Mode'),
                    value: ThemeMode.light,
                    groupValue: themeChanger.themeMode,
                    onChanged: themeChanger.setTheme,
                  ),
                  RadioListTile<ThemeMode>(
                    title: Text('Dark Mode'),
                    value: ThemeMode.dark,
                    groupValue: themeChanger.themeMode,
                    onChanged: themeChanger.setTheme,
                  ),

                ],
              ),
            ],
          ),
        ],
      ),

    );
  }
}