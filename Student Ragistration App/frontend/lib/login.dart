//import 'dart:ffi';

import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:student_teacher_ragistration_app/api_services.dart';
import 'package:student_teacher_ragistration_app/model/loginmodel.dart';
import 'package:student_teacher_ragistration_app/main.dart';
import 'package:student_teacher_ragistration_app/model/usermodel.dart';
import 'package:student_teacher_ragistration_app/profile.dart';
import 'package:student_teacher_ragistration_app/signup.dart';
import 'package:http/http.dart';
import 'package:http/http.dart' as http;
import 'package:student_teacher_ragistration_app/splashscreen.dart';

import 'bottomNavigationBar.dart';
import 'home.dart';

class LogIn extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
   return LogInState();
  }

}

class LogInState extends State<LogIn> {
static String? jwttoken;

 // UserModel userModel=UserModel();

LogInModel logInModel=LogInModel();
  TextEditingController username=TextEditingController();
  TextEditingController password=TextEditingController();

  @override
  Widget build(BuildContext context) {

   return Scaffold(
     backgroundColor: Colors.indigo,

//backgroundColor: Colors.white,
     body:Center(
       child: ListView(
         children: [
           Center(
             child: Container(
               // width: MediaQuery.of(context).size.width,
               height: 255,
                child: Column(
                 children: [
                   SizedBox(height: 20,),
                   ClipRRect(
                     borderRadius: BorderRadius.circular(20),
                     child: Image.network('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTQ71r0zLNbBTn35qjYqoDPNMkxntX9mAAC5A&usqp=CAU',
                       fit: BoxFit.cover,
                       width: 150,
                       height: 150,
                     ),
                   ),
                   SizedBox(height: 10,),

                   RichText(
                       text:TextSpan(
                           children: [
                             TextSpan(
                                 text: " Hi ",
                                 style: TextStyle(
                                //   fontStyle:FontStyle.italic,
                                   fontSize: 35.0,
                                   color: Colors.grey,
                                 //  fontWeight: FontWeight.bold,
                                   letterSpacing:1.5,
                                 )
                             ), TextSpan(
                                 text: "Student\n",
                                 style: TextStyle(
                                  // fontStyle:FontStyle.italic,
                                   fontSize: 30.0,
                                   color: Colors.white,
                                   fontWeight: FontWeight.bold,
                                   letterSpacing:1.5,
                                 )
                             ),
                             TextSpan(
                                 text: "     sign in to continue ",
                                 style: TextStyle(
                                 //  fontStyle:FontStyle.italic,
                                   fontSize: 17.0,
                                   color: Colors.grey,
                                   fontWeight: FontWeight.bold,
                                  // letterSpacing:1,
                                 )
                             ),
                           ]
                       )
                   ),
                 ],
               ),
             ),
           ),
           Center(
             child: Container(
              // width: 500,
               height: 800,
               decoration: BoxDecoration(
                 borderRadius: BorderRadius.only(topRight: Radius.circular(40),topLeft: Radius.circular(40)),
                 color: Colors.white
               ),
               child: Column(
                 children: [
                   SizedBox(height: 20,),
                   Container(
                     height: 50,
                     width: 400,
                     child: TextFormField(
                       controller: username,
                       decoration: InputDecoration(
                         border: OutlineInputBorder(
                           borderRadius: BorderRadius.circular(20),
                         ),
                         label:Text( "User Name",style: TextStyle(fontSize: 15,color: Colors.grey),),
                       ),
                     ),
                   ),
                   SizedBox(height: 18,),
                   Container(
                     height: 50,
                     width: 400,
                     child: TextFormField(
                       controller: password,
                       decoration: InputDecoration(
                           border: OutlineInputBorder(
                             borderRadius: BorderRadius.circular(20),
                           ),
                           label:Text( "Password",style: TextStyle(fontSize: 15,color: Colors.grey),),
                           suffixIcon: Icon(Icons.remove_red_eye_rounded,color: Colors.grey,)
                       ),
                     ),
                   ),
                   SizedBox(height: 20,),
                   Container(
                     height: 50,
                     width: 350,
                     decoration: BoxDecoration(
                       color: Colors.indigo,
                       borderRadius: BorderRadius.circular(16),
                     ),
                     child: TextButton(onPressed: (){

                       if(username.text.isNotEmpty&&password.text.isNotEmpty) {

                         ApiServices().signIn(username.text.toString(),
                             password.text.toString()).then((value) {
                           setState(() async {
                             logInModel = value!;
                             // userModel=logInModel.user;
                             jwttoken=logInModel.token;
                             print("Token");
                             print(jwttoken);
                             // print("UserDetails:");
                             // print(logInModel.user?.firstName);
                             var sharedpref=await SharedPreferences.getInstance();
                             sharedpref.setString("usertoken", jwttoken!);

                             var username=await SharedPreferences.getInstance();
                             username.setString("usercontact", logInModel.user!.contactNumber.toString());

                             // setState(() {
                             //   Profile(
                             //     firstName: logInModel.user?.firstName
                             //         .toString(),
                             //     lastName: logInModel.user?.lastName
                             //         .toString(),
                             //     email: logInModel.user?.email.toString(),
                             //     contactNumber: logInModel.user
                             //         ?.contactNumber.toString(),
                             //   );
                             // });
                             //

                               Navigator.of(context).push(MaterialPageRoute(builder: (context)=>NavigationBarApp(
                               ),),);
                           });
                         }).onError((error, stackTrace) {
                           ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                               content:Text("Wrong Username or Password.")));
                         });
                       }
                       else{
                         ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                             content:Text("Wrong Username or Password.")));
                       }
                     }, child:Text("Log In",style: TextStyle(color: Colors.white),) ),
                   ),
                   SizedBox(height:2),
                   Container(
                     padding: EdgeInsets.only(left: 200),
                     child: TextButton(onPressed: (){
                     //  Navigator.of(context).push(MaterialPageRoute(builder: (context)=>NavigationBarApp(),),);
                     }, child:Text("Forget Password",style: TextStyle(color: Colors.grey,fontWeight: FontWeight.bold),) ),
                   ),
                   SizedBox(height: 10,),
                   RichText(text: TextSpan(
                       children: [
                       ]
                   )),
               Center(
                 child: Container(
                  //  padding: EdgeInsets.only(left: 140),

                 child: Row(
                   mainAxisAlignment:MainAxisAlignment.center,
                     children: [
                       Text( "Don't have an account ?"),
                       TextButton(onPressed: (){
                         Navigator.of(context).push(MaterialPageRoute(builder: (context)=>SignUp(),),);
                       }, child:Text(" Sign Up",style: TextStyle(color: Colors.yellow,fontWeight: FontWeight.bold),)
                       ),

                     ],
                   )

                 ),
               ),

                 ],
               ),
             ),
           ),

         ],
       ),
     ),
    );
    }


}

/*int currentPageIndex = 0;

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body:
    );


 */


