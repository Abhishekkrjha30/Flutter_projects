import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class IntroPage1 extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      body: Center(
        child: Text("F",style: TextStyle(fontSize: 80,fontWeight: FontWeight.bold,color: Colors.white,fontStyle: FontStyle.italic),),
      ),
    );
  }

  
}