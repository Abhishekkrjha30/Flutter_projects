import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class IntroPage2 extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      body: Center(
        child:Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.insights,size: 90,color: Colors.white,),
            SizedBox(height: 25,),
            Text("NET WORTH ",style: TextStyle(fontSize:20,color: Colors.white ),),
            SizedBox(height: 20,),
            Text("Quickly visualize your total net worth ",style: TextStyle(color: Colors.white ),),
          ],
        ),
      ),
    );
  }

  
}