import 'package:flutter/material.dart';

class Intropage4 extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return  Container(
      color: Colors.blue,
      child:  Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(Icons.monetization_on_rounded,size: 80,color: Colors.white,),
          Text('CRYPTO TRADING',style: TextStyle(fontSize: 20,color: Colors.white,fontWeight: FontWeight.bold),),
          Text('Buy and sell crypto currencies',style: TextStyle(color: Colors.white),),
        ],
      ),


    );
  }

}