import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class NewsPage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
   return NewsPageState();
  }


}

class NewsPageState extends State<NewsPage>{
  @override
  Widget build(BuildContext context) {
   return Scaffold(
     appBar: AppBar(
       backgroundColor: Colors.blue,
      // leading: Icon(Icons.arrow_back_ios,color:Colors.white,),
       title: Text('News',style: TextStyle(color:Colors.white),),
       centerTitle: true,
     ),
     body: ListView(
       children: [
         ListTile(
     title: Text('Why the worst may already be over for the global economy.',),
           subtitle: Text('Bloomburg . 9 hours ago',style: TextStyle(color: Colors.grey),),
         ),
         Divider(
           thickness: 0.5,),
         ListTile(
           title: Text('Boeing ended the week worth 25000 billion less than it started',),
           subtitle: Text('Quartz. one day ago',style: TextStyle(color: Colors.grey),),
         ),
         Divider(
           thickness: 0.5,),
         ListTile(
           title: Text('Better economic dat needed before wall street can rise back to alltime hi...',),
           subtitle: Text('CNBC. 3 days ago',style: TextStyle(color: Colors.grey),),
         ),
         Divider(
           thickness: 0.5,),
         ListTile(
           title: Text('Apple Watch detects irregular heart beat in large U>S Study ',),
           subtitle: Text('Reuters.3 days ago',style: TextStyle(color: Colors.grey),),
         ),
         Divider(
           thickness: 0.5,),
        ListTile(
           title: Text('Trump urges General Motors to reopen Ohio plant in tweet ',),
           subtitle: Text('Reuters.12 days ago',style: TextStyle(color: Colors.grey),),
         ),
         Divider(
           thickness: 0.5,),
         ListTile(
           title: Text('Why the worst may already  be over for the global economy  ',),
           subtitle: Text('Bloomberg.12 days ago',style: TextStyle(color: Colors.grey),),
         ),

       ],
     ),
   );
  }
}