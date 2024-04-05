import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class IntroPage8 extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      body: Center(
        child:Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.notifications,size: 90,color: Colors.white,),
            SizedBox(height: 25,),
            Text("GET NOTIFIED ",style: TextStyle(fontSize:20,color: Colors.white ),),
            SizedBox(height: 20,),
            Text("Recieve notifications when important ",style: TextStyle(color: Colors.white ),),
            Text("events occur,such as payments,",style: TextStyle(color: Colors.white ),)
        ],

      ),
      )
    );
  }

  
}