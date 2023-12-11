import 'package:flutter/material.dart';
import 'package:second_project/main.dart';

class SignUp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('Sign up'),
        ),

        body: Container(

          child: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  height: 50,
                  child: Center(
                      child:Image.asset('assets/images/images.jpg')
                  ),
                ),
                SizedBox(height: 50,),
                Text("Sign Up Now",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                Text("please fill the details and create account",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.grey),),
                SizedBox(height: 50,),
                Container(
                  width: 400,
                  height: 50,
                  child: TextField(
                    decoration: InputDecoration(
                        labelText: "Fullname",
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(11),
                        )
                    ),
                  ),
                ),
                SizedBox(height: 20,),

                Container(
                  width: 400,
                  height: 50,
                  child: TextField(
                    decoration: InputDecoration(
                        labelText: "Email",
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(11),
                        )
                    ),
                  ),
                ),
                SizedBox(height: 20,),
                Container(
                  width: 400,
                  height: 50,
                  child: TextFormField(
                    decoration: InputDecoration(
                        labelText: "password",
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(11),

                        ),
                        suffixIcon:Icon(Icons.remove_red_eye,color: Colors.grey,)
                    ),
                  ),
                ),
                SizedBox(height: 20,),
                Container(
                    padding: EdgeInsets.only(left: 300),
                    child: Text('Forget Password  ?',style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,color: Colors.grey),)),
                SizedBox(height: 30,),
                Container(
                  height: 50,
                  width: 1000,
                  decoration: BoxDecoration(
                    color: Colors.redAccent,
                    borderRadius: BorderRadius.circular(11),

                  ),
                  child: TextButton(
                      onPressed: (){},
                      child: Text('Log In',style: TextStyle(fontSize: 20,color: Colors.white),)
                  ),
                ),
                SizedBox(height: 20,),
                RichText(text: TextSpan(
                    children:<TextSpan> [
                      TextSpan(
                          text: "Already have an account ?   ",
                          style: TextStyle(fontSize: 15,color: Colors.grey,fontWeight: FontWeight.bold)),

                      TextSpan(text: 'Log In',style: TextStyle(fontSize: 15,color: Colors.red,fontWeight: FontWeight.bold))
                    ]
                )),
                SizedBox(height: 20,),
                Text("Or connect with",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.grey),),
                SizedBox(height: 20,),
                Row(
                  children: [
                    SizedBox(width: 400,),
                    Icon(Icons.facebook_rounded,size: 60,color:Colors.indigo ,),
                    SizedBox(width: 7,),
                    Icon(Icons.telegram  ,size: 60,color:Colors.blueAccent ,),
                    SizedBox(width: 7,),
                    Icon(Icons.phone  ,size: 60,color:Colors.blueAccent ,),
                  ],
                ),
                SizedBox(height: 20,)
              ],
            ),
          ),
        )


    );
  }

}