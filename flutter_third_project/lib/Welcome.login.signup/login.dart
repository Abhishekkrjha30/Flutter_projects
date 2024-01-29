import 'package:flutter/material.dart';
import 'package:flutter_third_project/bottomnavigationbar.dart';
import 'package:flutter_third_project/Welcome.login.signup/welcome.dart';

class LogIn extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
     return LogInState ();
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

class LogInState  extends State{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Column(
          children: [
            Container(
              padding: EdgeInsets.only(right: 300),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // IconButton(onPressed: (){
                  //   Navigator.of(context).push(MaterialPageRoute(builder:(context)=>Welcome()));
                  // }, icon: Icon(Icons.arrow_back_ios_new_rounded,color: Colors.grey,size: 25,)),
                  SizedBox(height: 20,),
                  Text('Sign In',style: TextStyle(
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
                        Navigator.of(context).push(MaterialPageRoute(builder: (context)=>BottomNavBarPage(),),);
                      }, child:Text("Log In",style: TextStyle(fontSize: 15,color: Colors.white,fontWeight: FontWeight.bold),) ),
                    ),
                    SizedBox(height: 25,),
                    Text('OR',style: TextStyle(fontWeight: FontWeight.bold),),
                    SizedBox(height: 25,),
                    Container(
                      height: 50,
                      width: 250,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                        color: Colors.indigo
                      ),
                      child: TextButton(onPressed: (){
                        //  Navigator.of(context).push(MaterialPageRoute(builder: (context)=>NavigationBarApp(),),);
                      }, child:Text("Facebook Login",style: TextStyle(fontSize: 15,color: Colors.white,fontWeight: FontWeight.bold),) ),
                    ),

                  ],
                ),
            ),
          ],
        ),


    );

  }
}