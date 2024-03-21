import 'package:flutter/material.dart';
import 'package:food_delivery/SignUpLogIn/SignIn.dart';

import 'SignUp.dart';

class WelcomePage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {

    return WelcomePageState();
  }
}

class WelcomePageState extends State<WelcomePage>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     // backgroundColor: Colors.green,

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
          //   Image.network('',),
            Icon(Icons.restaurant_menu_outlined,size: 150,color: Colors.green,),
            SizedBox(height: 16,),
            Text('WELCOME TO INSTAEATS',style: TextStyle(color:Colors.green,fontSize: 22,letterSpacing: 1,fontWeight: FontWeight.bold),),
            SizedBox(height: 12,),
            Text('Order food from restaurants around',style: TextStyle(fontSize: 18,),),
            Text('you and track food in real-time.',style: TextStyle(fontSize: 18,),),
            SizedBox(height: 35,),
            Container(
              height: 48,
              width: 270,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(20)),
                color: Colors.green,
              ),
              child: TextButton(onPressed: (){
                Navigator.of(context).push(MaterialPageRoute(builder: (context)=>SignIn(),),);
              }, child:Text("Log In",style: TextStyle(fontSize: 15,color: Colors.white,fontWeight: FontWeight.bold),) ),
            ),
            SizedBox(height: 16,),
            Container(
              height: 48,
              width: 270,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(20)),
                border: Border.all(color: Colors.green),
              ),
              child: TextButton(onPressed: (){
               Navigator.of(context).push(MaterialPageRoute(builder: (context)=>SignUp(),),);
              }, child:Text("Sign Up",style: TextStyle(fontSize: 15,color: Colors.green,fontWeight: FontWeight.bold),) ),
            ),




          ],
        ),
      ),

    );
  }
}