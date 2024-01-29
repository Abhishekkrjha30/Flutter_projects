import 'package:flutter/material.dart';

class Intropage1 extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return  Container(
      color: Colors.blue,
      child: Center(
        child: Text('F',style: TextStyle(fontSize: 100,fontStyle:FontStyle.italic,color: Colors.white),),
      ),
    );
  }

}