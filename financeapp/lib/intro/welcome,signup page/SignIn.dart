import 'package:financeapp/bottomNavigationBar.dart';
import 'package:financeapp/intro/welcome,signup%20page/Signup.dart';
import 'package:financeapp/intro/welcome,signup%20page/WelcomePage.dart';
import 'package:flutter/material.dart';

class SignIn extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return SignInState();
  }


}

class SignInState extends State<SignIn>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,

         children: [
           SizedBox(height: 25,),
           Text('Sign In',style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,color: Colors.indigo),),

           SizedBox(height: 20,),
           Container(

               width: 550,

               child: TextFormField(


                 decoration: InputDecoration(
                   labelText: "E-mail or phone number",

                   border: OutlineInputBorder(

                     borderRadius: BorderRadius.circular(20),
                   )
                 ),
               ),
           ),
           SizedBox(height: 20,),
           Container(



             width: 550,

             child: TextFormField(


               decoration: InputDecoration(
                   labelText: "Password",

                   border: OutlineInputBorder(

                     borderRadius: BorderRadius.circular(20),
                   )
               ),
             ),
           ),
           SizedBox(height: 30,),
           Center(
             child: Container(
               decoration: BoxDecoration(
                   borderRadius: BorderRadius.circular(20),
                   color: Colors.indigo
               ),
               height: 50,width: 250,
               child: TextButton(
                 onPressed: () {
                   Navigator.of(context).push(MaterialPageRoute(builder: (context)=>BottomNavBarPage()));

                 },
                 child:Text('Log In',style: TextStyle(color: Colors.white,fontSize: 15,fontWeight: FontWeight.bold),),
               ),
             ),
           ),
           SizedBox(height: 25,),
           Center(child: Text('OR',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),)),
           SizedBox(height: 25,),
           Center(
             child: Container(
               decoration: BoxDecoration(
                   borderRadius: BorderRadius.circular(20),
                   color: Colors.indigo.shade900
               ),
               height: 50,width: 250,
               child: TextButton(
                 onPressed: () {},
                 child:Text('Facebook Login',style: TextStyle(color: Colors.white,fontSize: 15,fontWeight: FontWeight.bold),),
               ),
             ),
           ),
           SizedBox(height: 25,),
         ],


        ),
      ),

    );
  }
}