import 'package:flutter/material.dart';

class Intropage7 extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return  Container(
      color: Colors.blue,
      child:  Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(Icons.list_alt,size: 80,color: Colors.white,),
          Text('BACK ACCOUNT',style: TextStyle(fontSize: 20,color: Colors.white,fontWeight: FontWeight.bold),),
          Text('Link all of your account',style: TextStyle(color: Colors.white),),
        ],
      ),


    );
  }

}