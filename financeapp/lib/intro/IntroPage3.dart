import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class IntroPage3 extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      body: Center(
        child:Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.attach_money,size: 90,color: Colors.white,),
            SizedBox(height: 25,),
            Text("STOCKS TRADING ",style: TextStyle(fontSize:20,color: Colors.white ),),
            SizedBox(height: 20,),
            Text("Track and trade stock",style: TextStyle(color: Colors.white ),),
          ],
        ),
      ),
    );
  }

  
}