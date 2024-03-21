import 'package:flutter/material.dart';

class IntroPage1 extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {

    return IntroPage1State();
  }
}

class IntroPage1State extends State<IntroPage1>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green,

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
             //Image.network('data:image/png;base64,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',
           //  ),
            Icon(Icons.restaurant_menu_outlined,size: 140,color: Colors.white,),
            SizedBox(height: 14,),
            Text('WELCOME TO INSTAEATS',style: TextStyle(color: Colors.white,fontSize: 20,letterSpacing: 1,fontWeight: FontWeight.bold),),
           SizedBox(height: 10,),
            Text('Log in and order delicious food from restaurants',style: TextStyle(color: Colors.white,fontSize: 15,),),
            Text('around you.',style: TextStyle(color: Colors.white,fontSize: 15,),),
          ],
        ),
      ),

    );
  }
}