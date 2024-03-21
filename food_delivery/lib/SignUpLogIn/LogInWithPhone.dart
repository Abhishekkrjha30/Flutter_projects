import 'package:flutter/material.dart';
import 'package:intl_phone_field/intl_phone_field.dart';

class LogInWithPhone extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return LogInWithPhoneState ();
  }

}

class LogInWithPhoneState  extends State{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.green),

      ),
      body:Padding(
        padding: const EdgeInsets.only(left: 10,right: 10),
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.only(right: 280),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
               // crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Sign In',style: TextStyle(
                      fontSize: 22,color: Colors.green,fontWeight: FontWeight.bold
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
                    height: 70,
                    width: 340,
                    child: IntlPhoneField(
                      flagsButtonPadding: EdgeInsets.all(8),
                      dropdownIconPosition: IconPosition.leading,
                      decoration: InputDecoration(
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(22),
                            borderSide: BorderSide(
                                color: Colors.green,
                                width: 2
                            )

                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(22),
                        ),

                        label:Text( "Password",style: TextStyle(fontSize: 15,color: Colors.grey),),
                      ),
                      initialCountryCode: 'IN',
                      onChanged: (phone){
                        print(phone.completeNumber);

                      },
                    )


                  ),
                  SizedBox(height: 30,),
                  Container(
                    height: 45,
                    width: 300,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                      color: Colors.green,
                    ),
                    child: TextButton(onPressed: (){
                     // Navigator.of(context).push(MaterialPageRoute(builder: (context)=>BottomNavBarPage(),),);
                    }, child:Text("Send code",style: TextStyle(fontSize: 18,color: Colors.white,fontWeight: FontWeight.bold),) ),
                  ),
                  SizedBox(height: 25,),
                  Text('OR',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.grey),),
                  SizedBox(height: 25,),
                  Container(
                    height: 45,
                    width: 300,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                        color: Colors.indigo.shade900

                    ),
                    child: TextButton(onPressed: (){
                      //  Navigator.of(context).push(MaterialPageRoute(builder: (context)=>NavigationBarApp(),),);
                    }, child:Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.facebook_rounded,color: Colors.white,),
                      Text("Facebook Login",style: TextStyle(fontSize: 18,letterSpacing: 0.6,color: Colors.white,fontWeight: FontWeight.bold),),
                    ],
                    )
                    )
                  ),
                  SizedBox(height: 20,),
                  TextButton(onPressed: (){},
                      child:Text("Login with E-mail",style: TextStyle(fontSize: 16,color:Colors.blue,fontWeight: FontWeight.bold,letterSpacing: 1),),
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