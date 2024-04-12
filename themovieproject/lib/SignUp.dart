

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:themovieproject/SignIn.dart';
import 'package:themovieproject/utils/text.dart';

import 'Movies/HomePage.dart';

class SignUp extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return SignUpState ();
  }

}

class SignUpState  extends State{
  final  TextEditingController _email=TextEditingController();
  final  TextEditingController _password=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body:Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children:[
            Text('The Movie App',style:  GoogleFonts.breeSerif(
                shadows:[Shadow(color: Colors.black,blurRadius: 6)],fontSize: 34,color: Colors.redAccent,decoration:TextDecoration.none),),
            SizedBox(height: 40,),
            Text('Sign Up',style: TextStyle(
                fontSize: 22,color: Colors.white,fontWeight: FontWeight.bold)),
            SizedBox(height: 60,),
            Padding(
              padding: const EdgeInsets.all(10),
              child: Container(
                height: 50,
                // width: 400,
                child: TextFormField(
                  controller: _email,
                  decoration: InputDecoration(
                    focusedBorder: OutlineInputBorder(
                      //borderRadius: BorderRadius.circular(22),
                        borderSide: BorderSide(
                            color: Colors.redAccent,
                            width: 2
                        )

                    ),

                    border: OutlineInputBorder(
                        borderSide: BorderSide(
                            color: Colors.grey,
                            width: 4)
                      // borderRadius: BorderRadius.circular(22),
                    ),
                    label:Text( "Name",style: TextStyle(fontSize: 15,color: Colors.grey),),
                  ),
                ),
              ),
            ),

            Padding(
              padding: const EdgeInsets.all(10),
              child: Container(
                height: 50,
                // width: 400,
                child: TextFormField(
                  controller: _email,
                  decoration: InputDecoration(
                    focusedBorder: OutlineInputBorder(
                      //borderRadius: BorderRadius.circular(22),
                        borderSide: BorderSide(
                            color: Colors.redAccent,
                            width: 2
                        )

                    ),

                    border: OutlineInputBorder(
                        borderSide: BorderSide(
                            color: Colors.grey,
                            width: 4)
                      // borderRadius: BorderRadius.circular(22),
                    ),
                    label:Text( "E-mail or phone number",style: TextStyle(fontSize: 15,color: Colors.grey),),
                  ),
                ),
              ),
            ),
            // SizedBox(height: 10,),
            Padding(
              padding: const EdgeInsets.all(10),
              child: Container(
                //padding: EdgeInsets.only(left: 5,right: 5),

                height: 50,
                //width: 400,
                child:
                TextFormField(
                  controller: _password,
                  decoration: InputDecoration(
                    focusedBorder: OutlineInputBorder(
                      //borderRadius: BorderRadius.circular(22),
                        borderSide: BorderSide(
                            color: Colors.redAccent,
                            width: 2
                        )
                    ),
                    border: OutlineInputBorder(
                        borderSide: BorderSide(
                            color: Colors.redAccent,
                            width: 4)
                      // borderRadius: BorderRadius.circular(22),
                    ),
                    label:Text( "Password",style: TextStyle(fontSize: 15,color: Colors.grey),),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: Container(
                height: 50,
                // width: 400,
                child: TextFormField(
                  controller: _email,
                  decoration: InputDecoration(
                    focusedBorder: OutlineInputBorder(
                      //borderRadius: BorderRadius.circular(22),
                        borderSide: BorderSide(
                            color: Colors.redAccent,
                            width: 2
                        )

                    ),

                    border: OutlineInputBorder(
                        borderSide: BorderSide(
                            color: Colors.grey,
                            width: 4)
                      // borderRadius: BorderRadius.circular(22),
                    ),
                    label:Text( "Confirm Password",style: TextStyle(fontSize: 15,color: Colors.grey),),
                  ),
                ),
              ),
            ),

            SizedBox(height: 20,),

            Padding(
              padding: const EdgeInsets.all(10),
              child: Container(
                height: 50,
                width:double.infinity,
                decoration: BoxDecoration(
                  // borderRadius: BorderRadius.all(Radius.circular(20)),
                  color: Colors.red,
                ),
                child: TextButton(onPressed: (){
                  Navigator.of(context).push(MaterialPageRoute(builder: (context)=>SignIn(),),);
                }, child:Text("Sign Up",style: TextStyle(fontSize: 18,color: Colors.white,fontWeight: FontWeight.bold),) ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Have A Account!",style: TextStyle(fontSize: 16,color:Colors.grey,fontWeight: FontWeight.bold,letterSpacing: 1),),
                TextButton(
                  onPressed: (){
                     Navigator.of(context).push(MaterialPageRoute(builder: (context)=>SignIn(),),);
                  },
                  child:Text("Login",style: TextStyle(fontSize: 18,color:Colors.red,fontWeight: FontWeight.bold,letterSpacing: 1),),
                ),

              ],
            ),



          ],
        ),
      ),



    );

  }
}