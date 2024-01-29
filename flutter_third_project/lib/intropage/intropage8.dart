import 'package:flutter/material.dart';

class Intropage8 extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return  Container(
      color: Colors.blue,
      child:  Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(Icons.notifications,size: 80,color: Colors.white,),
          Text('GET NOTIFIED',style: TextStyle(fontSize: 20,color: Colors.white,fontWeight: FontWeight.bold),),
          Text('Receive all notificaton',style: TextStyle(color: Colors.white),),
        ],
      ),


    );
  }

}