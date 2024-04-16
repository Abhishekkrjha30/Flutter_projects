import 'package:flutter/material.dart';

import 'SignIn.dart';
import 'SignUp.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({super.key});

  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [

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
          SizedBox(height: 20,),

          Padding(
            padding: const EdgeInsets.all(10),
            child: Container(
              height: 48,width: double.infinity,
              decoration: BoxDecoration(
               // borderRadius: BorderRadius.all(Radius.circular(20)),
                color: Colors.blue.shade900,
              ),
              child: TextButton(onPressed: (){
                Navigator.of(context).push(MaterialPageRoute(builder: (context)=>SignIn(),),);
              }, child:Text("Log In",style: TextStyle(fontSize: 18,color: Colors.white,fontWeight: FontWeight.bold),) ),
            ),
          ),
          SizedBox(height: 12,),
          Padding(
            padding: const EdgeInsets.all(10),
            child: Container(
              height: 48,width: double.infinity,
              decoration: BoxDecoration(
               // borderRadius: BorderRadius.all(Radius.circular(20)),
                border: Border.all(color: Colors.blue.shade900),
              ),
              child: TextButton(onPressed: (){
                Navigator.of(context).push(MaterialPageRoute(builder: (context)=>SignUp(),),);
              }, child:Text("Sign Up",style: TextStyle(fontSize: 18,color: Colors.blue.shade900,fontWeight: FontWeight.bold),) ),
            ),
          ),
          Text('OR',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold)),
          Padding(
            padding: const EdgeInsets.all(10),
            child: Container(
              height: 48,width: double.infinity,
              decoration: BoxDecoration(
               // borderRadius: BorderRadius.all(Radius.circular(20)),
                border: Border.all(color: Colors.blue.shade900),
              ),
              child: TextButton(onPressed: (){
                Navigator.of(context).push(MaterialPageRoute(builder: (context)=>SignUp(),),);
              }, child:Row(
                mainAxisAlignment: MainAxisAlignment.center,

                children: [
                  Image.network('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRTYCQVUKM1NfdEoWlejM-RlHIz3q-BoqZ78w&usqp=CAU'),
                Text("Continue With Google",style: TextStyle(fontSize: 18,color: Colors.blue.shade900,fontWeight: FontWeight.bold)
                )
              ],
              )


            ),
          )),

        ],
      ),
    );
  }
}
