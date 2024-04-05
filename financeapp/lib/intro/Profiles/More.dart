import 'dart:js';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'NewsPage.dart';
import 'NotificationPage.dart';
import 'Profile.dart';

class More extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
     return MoreState();
  }

}

class MoreState extends State<More>{
  @override
  Widget build(BuildContext context) {
   return Scaffold(
     appBar: AppBar(
       backgroundColor: Colors.blue,
       title: Text('More',style: TextStyle(color: Colors.white),),
       centerTitle: true,
       actions: [
         Text('Edit    ',style: TextStyle(fontSize: 15,color: Colors.white),)
       ],
     ),
     body: ListView(
       children: [
         ListTile(
           onTap: (){
             Navigator.of(context).push(MaterialPageRoute(builder: (context)=>NewsPage()));
           },
           leading: Icon(Icons.newspaper,color: Colors.blue,),
           title: const Text('News'),
           trailing: Icon(Icons.arrow_forward_ios_outlined,color: Colors.black26,),
         ),
         Divider(thickness: 0.7,),
         ListTile(
           onTap: (){
             Navigator.of(context).push(MaterialPageRoute(builder: (context)=>NotificationPage()));
           },
           leading:Icon(Icons.notifications,color: Colors.blue),
           title: Text('Notifications'),
           trailing: Icon(Icons.arrow_forward_ios_outlined,color: Colors.black26,),
         ),
         Divider(thickness:0.7),
         ListTile(
           onTap:(){
             Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Profile()));
           },
           leading: Icon(Icons.account_circle,color: Colors.blue),
           title:Text('Profile'),
           trailing:Icon(Icons.arrow_forward_ios_outlined,color: Colors.black26),
         ),
       ],
     ),

   );
  }
}