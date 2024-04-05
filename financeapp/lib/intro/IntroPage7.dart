import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class IntroPage7 extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      body: Center(
        child:Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.post_add,size: 90,color: Colors.white,),
            SizedBox(height: 25,),
            Text("BANK ACCOUNT ",style: TextStyle(fontSize:20,color: Colors.white ),),
            SizedBox(height: 20,),
            Text("Link all of your bank accounts and ",style: TextStyle(color: Colors.white ),),
            Text("manage them in a single app.",style: TextStyle(color: Colors.white ),
        ),
        ]
      ),
      )
    );
  }

  
}