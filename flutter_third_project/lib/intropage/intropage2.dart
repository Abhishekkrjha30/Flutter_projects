import 'package:flutter/material.dart';

class Intropage2 extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return  Container(
      color: Colors.blue,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(Icons.insights,size: 80,color: Colors.white,),
          Text('NET WORTH',style: TextStyle(fontSize: 20,color: Colors.white,fontWeight: FontWeight.bold),),
          Text('financial progress over time.',style: TextStyle(color: Colors.white),),
        ],
      ),
    );
  }

}