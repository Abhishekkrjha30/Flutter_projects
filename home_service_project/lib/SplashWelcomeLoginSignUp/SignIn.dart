

import 'package:flutter/material.dart';
import 'package:home_service_project/SplashWelcomeLoginSignUp/SignUp.dart';

import '../BottomNavBarPage/BottomNavPage.dart';
import '../Home/HomePage.dart';

class SignIn extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return SignInState ();
  }

}

class SignInState  extends State{
  final  TextEditingController _email=TextEditingController();
  final  TextEditingController _password=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children:[
            Container(
              height: 100,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  image: DecorationImage(
                      image: NetworkImage(
                        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRmf5wMpXQETBNX7sD1Zz778aBPgYB5gt_Uhg&usqp=CAU',
                      )
                  )
              ),
            ),
            //SizedBox(height: 40,),
            Text('Sign In',style: TextStyle(
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
                            color: Colors.blue.shade900,
                            width: 2
                        )
                    ),
                    border: OutlineInputBorder(
                        borderSide: BorderSide(
                            color: Colors.blue.shade900,
                            width: 4)
                      // borderRadius: BorderRadius.circular(22),
                    ),
                    label:Text( "Password",style: TextStyle(fontSize: 15,color: Colors.grey),),
                  ),
                ),
              ),
            ),
            SizedBox(height: 10,),
            Padding(
              padding: const EdgeInsets.all(10),
              child: Align(
                alignment: Alignment.centerRight,
                child: Text('Forget Password ?',style: TextStyle(
                    fontSize: 18,color: Colors.grey,fontWeight: FontWeight.bold)),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: Container(
                height: 50,
                width:double.infinity,
                decoration: BoxDecoration(
                  // borderRadius: BorderRadius.all(Radius.circular(20)),
                  color: Colors.blue.shade900,
                ),
                child: TextButton(onPressed: (){
                  Navigator.of(context).push(MaterialPageRoute(builder: (context)=>BottomNavBarPage(),),);
                }, child:Text("Log In",style: TextStyle(fontSize: 18,color: Colors.white,fontWeight: FontWeight.bold),) ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Create New Account!",style: TextStyle(fontSize: 16,color:Colors.grey,fontWeight: FontWeight.bold,letterSpacing: 1),),
                TextButton(
                  onPressed: (){
                     Navigator.of(context).push(MaterialPageRoute(builder: (context)=>SignUp(),),);
                  },
                  child:Text("Register",style: TextStyle(fontSize: 18,color:Colors.blue.shade900,fontWeight: FontWeight.bold,letterSpacing: 1),),
                ),

              ],
            ),



          ],
        ),
      ),



    );

  }
}