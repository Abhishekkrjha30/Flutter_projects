import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class NotificationPage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
   return NotificationStatus();
  }
  
}
class NotificationStatus extends State<NotificationPage>{
  @override
  Widget build(BuildContext context) {
   return Scaffold(
     appBar: AppBar(
       backgroundColor: Colors.blue,
       title: Text("Notifications ",style: TextStyle(color: Colors.white),),
       centerTitle: true,
     ),
     body: ListView(
       children: const [
         Padding(
             padding: EdgeInsets.only(top: 20,left: 50),
         child:Text("Transactions",style: TextStyle(color: Colors.grey,fontSize: 12),),
         ),
         ListTile(
           leading: Icon(Icons.library_books_rounded,color: Colors.grey,),
           title: Text('you paid 25 with your Bofa credit card Safeway',
           style: TextStyle(fontSize: 15),),
           trailing: Icon(Icons.circle,size: 10,color: Colors.orange,),
         ),
         Padding(
           padding: EdgeInsets.only(left: 50),
           child: Text('12 hours ago',style: TextStyle(color: Colors.grey,fontSize: 12),),
         ),
         Divider(
           thickness: 0.5,
         ),
         Padding(
             padding: EdgeInsets.only(left: 50),
           child: Text('SALARY RECIEVED ',style: TextStyle(color: Colors.grey,fontSize: 12),),
         ),
         ListTile(
           leading: Icon(Icons.money,color: Colors.grey,),
           title: Text('you recieved 25000 from your employee ',
             style: TextStyle(fontSize: 15),),
           trailing: Icon(Icons.circle,size: 10,color: Colors.orange,),
         ),
         Padding
           (padding: EdgeInsets.only(left: 50),
           child: Text('One day ago',style: TextStyle(color: Colors.grey,fontSize: 12),),
         ),
         Divider(
           thickness: 0.5,
         ),
         Padding(
             padding:EdgeInsets.only(left: 50),
           child: Text("PORTFOLIO MILESTONE ",style: TextStyle(color: Colors.grey),),
         ),
         ListTile(
           leading: Icon(Icons.arrow_downward_outlined,color: Colors.grey,),
           title: Text('Congratulations! Your networth just surpassed 10,000',
           style: TextStyle(fontSize: 15),),
         ),
         Padding(
             padding:EdgeInsets.only(left: 50) ,
           child: Text('One day ago',style: TextStyle(color: Colors.grey,fontSize: 12),),
         ),
         Divider(
           thickness: 0.5,
         ),
         Padding(
             padding: EdgeInsets.only(left: 50),
           child: Text('DIVIDEND RECIEVED',style: TextStyle(color: Colors.grey,fontSize: 12),),
         ),
         ListTile(
           leading: Icon(Icons.chat,color: Colors.grey,),
           title: Text('you recieved a dividend in the amount of 27000',
           style: TextStyle(fontSize: 15),),
         ),
         Padding(
             padding: EdgeInsets.only(left: 50),
           child: Text('one day ago',style: TextStyle(color: Colors.grey,fontSize: 12),),
         ),
         Divider(
           thickness: 0.5,
         ),
         Padding(
             padding:EdgeInsets.only(left: 50) ,
           child: Text('SHARES BOUGHT',style: TextStyle(color: Colors.grey,fontSize: 12),),
         ),
         ListTile(
           leading: Icon(Icons.person,color: Colors.grey,),
           title: Text('you have just bought 53 shares of TATA ',
           style: TextStyle(fontSize: 15),),
           trailing:Icon(Icons.circle,color: Colors.orange,size: 12,),
         ),
         Padding(
             padding:EdgeInsets.only(left: 50),
           child: Text('one day ago ',style: TextStyle(color: Colors.grey,fontSize: 12),),
         ),

         Divider(
           thickness: 0.5,
         ),
         Padding(
             padding: EdgeInsets.only(left: 50),
           child: Text('DEPOSITE',style: TextStyle(color: Colors.grey,fontSize: 12),),
         ),

         ListTile(
           leading: Icon(Icons.monetization_on_rounded,color: Colors.grey,),
           title: Text('Congratulations! Your networth just surpassed 10,000',
           style: TextStyle(fontSize: 15),),
           trailing: Icon(Icons.circle,color: Colors.orange,size: 12,),
         ),
         Padding(
             padding: EdgeInsets.only(left: 50),
         child: Text('one day ago',style: TextStyle(color: Colors.grey,fontSize: 12),),
         ),

       ],
     ),
   );
  }
  
}