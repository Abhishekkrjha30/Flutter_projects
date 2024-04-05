import 'package:financeapp/HomePage.dart';
import 'package:financeapp/intro/welcome,signup%20page/SignIn.dart';
import 'package:flutter/material.dart';

class SignUp extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return SignUpState();
  }


}

class SignUpState extends State<SignUp>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,

          children: [
            const SizedBox(height: 20,),
            const Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Create new account',style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,color: Colors.indigo),),
              ],
            ),

            SizedBox(height: 20,),
            Container(

              width: 550,

              child: TextFormField(


                decoration: InputDecoration(
                    labelText: "Full Name",

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
                    labelText: "Phone Number",

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
                    color: Colors.indigo.shade900
                ),
                height: 50,width: 250,
                child: TextButton(
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(builder: (context)=>SignIn()));
                  },
                  child:Text('Sign Up',style: TextStyle(color: Colors.white,fontSize: 15,fontWeight: FontWeight.bold),),
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