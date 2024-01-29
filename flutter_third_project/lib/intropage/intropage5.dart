import 'package:flutter/material.dart';

class Intropage5 extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return  Container(
      color: Colors.blue,
      child:  Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(Icons.track_changes,size: 80,color: Colors.white,),
          Text('EXPENSE TRACKING',style: TextStyle(fontSize: 20,color: Colors.white,fontWeight: FontWeight.bold),),
          Text('Track your expenses',style: TextStyle(color: Colors.white),),
        ],
      ),



    );
  }

}