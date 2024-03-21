import 'package:flutter/material.dart';

class IntroPage2 extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {

    return IntroPage2State();
  }
}

class IntroPage2State extends State<IntroPage2>{
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

            Icon(Icons.directions_bike_rounded,size: 140,color: Colors.white,),
            SizedBox(height: 14,),
            Text('ORDER FOOD',style: TextStyle(color: Colors.white,fontSize: 20,letterSpacing: 1,fontWeight: FontWeight.bold),),
           SizedBox(height: 10,),
            Text('Hungry? Order food in just a few clicks we\'ll ',style: TextStyle(color: Colors.white,fontSize: 15,),),
            Text('takecare of you.',style: TextStyle(color: Colors.white,fontSize: 15,),),
          ],
        ),
      ),

    );
  }
}