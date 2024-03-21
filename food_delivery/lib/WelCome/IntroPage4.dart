import 'package:flutter/material.dart';

class IntroPage4 extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {

    return IntroPage4State();
  }
}

class IntroPage4State extends State<IntroPage4>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green,

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
          //   Image.network('',),
            Icon(Icons.apple,size: 140,color: Colors.white,),
            SizedBox(height: 14,),
            Text('SEAMLESS PAYMENTS',style: TextStyle(color: Colors.white,fontSize: 20,letterSpacing: 1,fontWeight: FontWeight.bold),),
           SizedBox(height: 10,),
            Text('Pay with your credit cards,Apple pay or Android pay,',style: TextStyle(color: Colors.white,fontSize: 15,),),
            Text('with one click.',style: TextStyle(color: Colors.white,fontSize: 15,),),
          ],
        ),
      ),

    );
  }
}