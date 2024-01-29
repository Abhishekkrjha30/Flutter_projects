import 'package:flutter/material.dart';
import 'package:flutter_third_project/Welcome.login.signup/login.dart';
import 'package:flutter_third_project/Welcome.login.signup/signup.dart';

class Welcome extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return WelcomeState() ;
  }

}

class WelcomeState extends State<Welcome> {
  @override
  Widget build(BuildContext context) {
   return Scaffold(
     body:Center(
       child: Column(
         mainAxisAlignment: MainAxisAlignment.center,
         crossAxisAlignment: CrossAxisAlignment.center,

         children: [
            Text('F',style: TextStyle(fontSize: 100,fontStyle:FontStyle.italic,color: Colors.blue),),
           SizedBox(height: 10,),
           Text("Welcome to Finance",style: TextStyle(fontSize: 25,fontWeight:  FontWeight.bold,color: Colors.blue),),
           SizedBox(height: 20,),
           Text('Manage all of your finance accounts\n              in one place'),
           SizedBox(height: 20,),

           Container(
             height: 50,
               width: 250,
               decoration: BoxDecoration(
                 borderRadius: BorderRadius.all(Radius.circular(20)),
                 color: Colors.blue,
               ),
               child: TextButton(onPressed: (){
                 Navigator.of(context).push(MaterialPageRoute(builder: (context)=>LogIn(),),);
               }, child:Text("Log In",style: TextStyle(fontSize: 15,color: Colors.white,fontWeight: FontWeight.bold),) ),
             ),
            SizedBox(height: 18,),
            Container(
             height: 50,
               width: 250,
               decoration: BoxDecoration(
                 borderRadius: BorderRadius.all(Radius.circular(20)),
                 border: Border.all(color: Colors.grey),
               ),
               child: TextButton(onPressed: (){
                 Navigator.of(context).push(MaterialPageRoute(builder: (context)=>SignUp(),),);
               }, child:Text("Sign Up",style: TextStyle(fontSize: 15,color: Colors.grey,fontWeight: FontWeight.bold),) ),
             ),



         ],
       ),
     ),

   );
  }
}