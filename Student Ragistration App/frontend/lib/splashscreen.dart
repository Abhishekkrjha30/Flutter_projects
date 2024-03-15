import 'dart:async';

import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:student_teacher_ragistration_app/bottomNavigationBar.dart';
import 'package:student_teacher_ragistration_app/login.dart';
import 'package:student_teacher_ragistration_app/main.dart';
import 'package:student_teacher_ragistration_app/profile.dart';
import 'package:student_teacher_ragistration_app/signup.dart';

import 'home.dart';

class SplashScreen extends StatefulWidget{

  @override
  State<StatefulWidget> createState() {
    return SplashScreenState();
    }

}
String token="";

class SplashScreenState extends State<SplashScreen> {
  static const String keylogin="login";
  @override
  void initState() {
    super.initState();
    wheretogo();
  //  wheretogo();
  //   Timer(Duration(seconds:3),(){
  //     Navigator.pushReplacement
  //       (context,
  //         MaterialPageRoute
  //           (builder:
  //             (context)=>SignUp()
  //         ));
  //   });


  }
  @override
  Widget build(BuildContext context) {

     return Scaffold(

       body: Container(
         color: Colors.indigo,

         child: Center(
           child: SingleChildScrollView(
             child: Row(
               mainAxisAlignment: MainAxisAlignment.spaceAround,
               children: [
                 RichText(
                     text:TextSpan(
                       children: [
                         TextSpan(
                           text: " Student & Teacher\n",
                           style: TextStyle(
                             fontStyle:FontStyle.italic,
                             fontSize: 30.0,
                             color: Colors.white,
                             fontWeight: FontWeight.bold,
                             letterSpacing:1.5,
                           )
                         ),
                         TextSpan(
                             text: "   Regd. App ",
                           style: TextStyle(
                             fontStyle:FontStyle.italic,
                             fontSize: 30.0,
                             color: Colors.white,
                             fontWeight: FontWeight.bold,
                             letterSpacing:1.5,
                           )
                         ),
                       ]
                     )
                 ),
            ClipRRect(
              borderRadius: BorderRadius.circular(20),
                  child: Image.network('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTQ71r0zLNbBTn35qjYqoDPNMkxntX9mAAC5A&usqp=CAU',
                  fit: BoxFit.cover,
                  width: 150,
                  height: 150,
         ),
            ),

               ],

             ),
           ),
         ),


       ),
     );
    }

    void wheretogo() async{

    setState(() {

    });

var sharedpref=await SharedPreferences.getInstance();
 token =(sharedpref.getString("usertoken")??"");
 setState(() {
   if(token.isEmpty){
     Timer(Duration(seconds:3),(){
       Navigator.pushReplacement
         (context,
           MaterialPageRoute
             (builder:
               (context)=>SignUp()
           ));
     });
   }
   else{
     Timer(Duration(seconds:3),(){
       Navigator.pushReplacement
         (context,
           MaterialPageRoute
             (builder:
               (context)=>NavigationExample()
           ));
     });
   }

 });
  }
}
