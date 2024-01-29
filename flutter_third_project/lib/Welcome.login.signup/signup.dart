import 'package:flutter/material.dart';
import 'package:flutter_third_project/Welcome.login.signup/login.dart';
import 'package:flutter_third_project/Welcome.login.signup/welcome.dart';

class SignUp extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return SignUpState ();
  }

}
// Container(
// height: 50,
// width: 400,
// child: TextFormField(
// controller: username,
// decoration: InputDecoration(
// border: OutlineInputBorder(
// borderRadius: BorderRadius.circular(20),
// ),
// label:Text( "User Name",style: TextStyle(fontSize: 15,color: Colors.grey),),
// ),
// ),
// ),

class SignUpState  extends State{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:SingleChildScrollView(
        child: Column(
          children: [
            Container(

              padding: EdgeInsets.only(right: 180),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                 // IconButton(onPressed: (){
                  //   Navigator.of(context).push(MaterialPageRoute(builder:(context)=>Welcome()));
                  // }, icon: Icon(Icons.arrow_back_ios_new_rounded,color: Colors.grey,size: 25,)),
                  SizedBox(height: 20,),
                  Text('Create new account',style: TextStyle(
                      fontSize: 20,color: Colors.blue
                  ),),
                ],
              ),
            ),
            Center(
              child: Column(
                children: [
                  SizedBox(height: 25,),
                  Container(
                    padding: EdgeInsets.only(left: 5,right: 5),

                    height: 50,
                    width: 400,
                    child: TextFormField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(22),
                        ),
                        label:Text( "Full Name",style: TextStyle(fontSize: 15,color: Colors.grey),),
                      ),
                    ),
                  ),SizedBox(height: 25,),
                  Container(
                    padding: EdgeInsets.only(left: 5,right: 5),

                    height: 50,
                    width: 400,
                    child: TextFormField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(22),
                        ),
                        label:Text( "Phone Number",style: TextStyle(fontSize: 15,color: Colors.grey),),
                      ),
                    ),
                  ),SizedBox(height: 25,),
                  Container(
                    padding: EdgeInsets.only(left: 5,right: 5),

                    height: 50,
                    width: 400,
                    child: TextFormField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(22),
                        ),
                        label:Text( "E-mail or phone number",style: TextStyle(fontSize: 15,color: Colors.grey),),
                      ),
                    ),
                  ),SizedBox(height: 25,),
                  Container(
                    padding: EdgeInsets.only(left: 5,right: 5),

                    height: 50,
                    width: 400,
                    child: TextFormField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(22),
                        ),
                        label:Text( "Password",style: TextStyle(fontSize: 15,color: Colors.grey),),
                      ),
                    ),
                  ),
                  SizedBox(height: 45,),
                  Container(

                    height: 50,
                    width: 250,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                      color: Colors.blue,
                    ),
                    child: TextButton(onPressed: (){
                      Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context)=>LogIn(),),);
                    }, child:Text("Sign Up",style: TextStyle(fontSize: 15,color: Colors.white,fontWeight: FontWeight.bold),) ),
                  ),

                ],
              ),
            ),
          ],
        ),
      ),


    );

  }
}