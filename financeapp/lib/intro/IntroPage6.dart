import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class IntroPage6 extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      body: Center(
        child:Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.newspaper,size: 90,color: Colors.white,),
            SizedBox(height: 25,),
            Text("MARKET NEWS ",style: TextStyle(fontSize:20,color: Colors.white ),),
            SizedBox(height: 20,),
            Text("Stay on the top of the market with our ",style: TextStyle(color: Colors.white ),),
            Text("awesome news on stock,crypto,real",style: TextStyle(color: Colors.white ),),
            Text("estate,etc",style: TextStyle(color: Colors.white ),),
          ],
        ),
      ),
    );
  }

  
}