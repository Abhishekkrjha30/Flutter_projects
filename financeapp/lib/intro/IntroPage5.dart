import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class IntroPage5 extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      body: Center(
        child:Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.track_changes_outlined,size: 90,color: Colors.white,),
            SizedBox(height: 25,),
            Text("EXPENSES TRACKING ",style: TextStyle(fontSize:20,color: Colors.white ),),
            SizedBox(height: 20,),
            Text("Track your expenses and view their",style: TextStyle(color: Colors.white ),),
            Text("distribution per category.",style: TextStyle(color: Colors.white ),),
          ],
        ),
      ),
    );
  }

  
}