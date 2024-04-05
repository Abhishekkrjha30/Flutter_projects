import 'dart:ui';

import 'package:financeapp/intro/welcome,signup%20page/SignIn.dart';
import 'package:financeapp/intro/welcome,signup%20page/Signup.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class WelcomePage extends StatefulWidget {
  @override
  _WelcomePageState createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Center(
        child: SingleChildScrollView(
          child: Column(
      
            //mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: 50,
              ),
              Text(
                'F',
                style: TextStyle(
                    fontSize: 150, fontWeight: FontWeight.bold, color: Colors.indigo),
              ),
              SizedBox(height: 20,),
              Text('Welcome To Finanace',style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,color: Colors.indigo),),
              SizedBox(height: 20,),
              Text('Manage all of your finance accounts',),
              Text('in one place.'),
              SizedBox(height: 20,),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                    color: Colors.indigo
                ),
                height: 50,width: 250,
                child: TextButton(
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(builder: (context)=>SignIn()));
                  },
                  child:Text('Log In',style: TextStyle(color: Colors.white,fontSize: 15,fontWeight: FontWeight.bold),),
                ),
              ),
              SizedBox(height:10),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(width:2,color: Colors.black12),
                 // color: Colors.blue,
                ),
                height: 50,width: 250,
                child: TextButton(
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(builder: (context)=>SignUp()),);
                  },
                  child:const Text('Sign Up',style: TextStyle(color: Colors.black,fontSize: 15,fontWeight: FontWeight.bold),),
                ),
              ),



            ],
          ),
        ),
      ),
    );
  }
}