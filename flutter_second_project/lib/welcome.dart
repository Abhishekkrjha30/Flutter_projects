import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:second_project/main.dart';

class Welcome extends StatelessWidget{
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(title: Text("Welcome"),
      ),
      body:  SingleChildScrollView(
    child: Column(

    children: [
    Container(
      height: 50,
      child: Center(
          child:Image.asset('assets/images/images.jpg')
      ),
    ),
    Container(
    padding: EdgeInsets.only(top: 50),
    height: 250,
    child: Center(
    child: Image.asset('assets/images/best-ai-generate-images.png'),
    ),
    ),
    Container(
    padding: EdgeInsets.only(top: 50),
    child: RichText(text:
    TextSpan(
    children: [
    TextSpan(text:"Welcome",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold)),
    ]

    ),

    ),
    ),
    Text("Create an account and access thousand",style: TextStyle(color: Colors.grey)),
    Text("of cool stuffs",style: TextStyle(color: Colors.grey)),
    SizedBox(height: 70,),
    Container(
    height: 50,
    width: 1000,
      decoration: BoxDecoration(
        color: Colors.redAccent,
        borderRadius: BorderRadius.circular(11),

      ),
    child: TextButton(
    onPressed: (){},
    child: Text('Getting Statrted',style: TextStyle(fontSize: 20,color: Colors.white),)
    ),
    ),
    SizedBox(height: 20,),
    RichText(text: TextSpan(
    children:<TextSpan> [
    TextSpan(
    text: 'Already have an account?   ',
    style: TextStyle(fontSize: 15,color: Colors.grey,fontWeight: FontWeight.bold)),

    TextSpan(text: 'Log In',style: TextStyle(fontSize: 15,color: Colors.red,fontWeight: FontWeight.bold))
    ]
    )),
      SizedBox(height: 30,),
    ],
    ),
    ),

    );
  }

}