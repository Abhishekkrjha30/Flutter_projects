import 'package:flutter/material.dart';

class Intropage6 extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return  Container(
      color: Colors.blue,
      child:  Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(Icons.newspaper_outlined,size: 80,color: Colors.white,),
          Text('MARKET NEWS',style: TextStyle(fontSize: 20,color: Colors.white,fontWeight: FontWeight.bold),),
          Text('Stay on top of the market',style: TextStyle(color: Colors.white),),
        ],
      ),


    );
  }

}