import 'package:flutter/material.dart';

class IntroPage3 extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {

    return IntroPage3State();
  }
}

class IntroPage3State extends State<IntroPage3>{
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
            Icon(Icons.reorder,size: 140,color: Colors.white,),
            SizedBox(height: 14,),
            Text('REORDER AND SAVE',style: TextStyle(color: Colors.white,fontSize: 20,letterSpacing: 1,fontWeight: FontWeight.bold),),
           SizedBox(height: 10,),
            Text('Reorder in on click.Bookmark your favorite',style: TextStyle(color: Colors.white,fontSize: 15,),),
            Text('restaurants.',style: TextStyle(color: Colors.white,fontSize: 15,),),
          ],
        ),
      ),

    );
  }
}