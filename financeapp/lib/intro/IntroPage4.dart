import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class IntroPage4 extends StatelessWidget{
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
            Text("CRYPTO TRADING ",style: TextStyle(fontSize:20,color: Colors.white ),),
            SizedBox(height: 20,),
            Text("Buy and sell crypto currencies with",style: TextStyle(color: Colors.white ),),
            Text("your fingertips",style: TextStyle(color: Colors.white ),),
          ],
        ),
      ),
    );
  }

  
}