import 'package:flutter/material.dart';
import 'package:flutter_third_project/More/Contactus.dart';
import 'package:flutter_third_project/More/accountdetails.dart';
import 'package:flutter_third_project/More/setting.dart';
import 'package:flutter_third_project/Welcome.login.signup/welcome.dart';
import 'package:flutter_third_project/intropage/PageIndicator.dart';

class Profile extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {

      return ProfileState();
  }

}

class ProfileState extends State<Profile>{
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text("Profile",style: TextStyle(color: Colors.white),),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [

            Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQJ0mv_NlCWaAPKCTefbXTZtdh3-d3CuK9GXA&usqp=CAU",
                  fit: BoxFit.fill,
              width: 600,
              height: 180,
                ),


            SizedBox(height: 20,),

            Center(
              child: Text("Abhishek Jha",style:TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
            ),
            SizedBox(height: 22,),
            TextButton(onPressed:(){
              Navigator.of(context).push(MaterialPageRoute(builder: (context)=>AccountDetails(),),);

            }, child:
            Padding(
              padding: const EdgeInsets.only(left: 8,right: 8),
              child: Row(


                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [

                    Row(
                    //  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Icon(Icons.account_circle,color: Colors.blue,size: 25,),
                        SizedBox(width: 20,),

                        Text("Account Details",style: TextStyle(color: Colors.black),),
                      ],
                    ),
                    Icon(Icons.arrow_forward_ios_outlined,color: Colors.grey,size: 22,)

                  ],
                ),
            ),), SizedBox(height: 18,),
        TextButton(onPressed:(){
          Navigator.of(context).push(MaterialPageRoute(builder: (context)=>SettingPage(),),);

        }, child:
        Padding(
              padding: const EdgeInsets.only(left: 8,right: 8),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                    //  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Icon(Icons.settings,color: Colors.black,size: 25,),
                        SizedBox(width: 20,),

                        Text("Settings",style: TextStyle(color: Colors.black),),
                      ],
                    ),
                    Icon(Icons.arrow_forward_ios_outlined,color: Colors.grey,size: 22,)

                  ],
                ),
            ),), SizedBox(height: 18,),
        TextButton(onPressed:(){
          Navigator.of(context).push(MaterialPageRoute(builder: (context)=>ContactUs()));
        }, child:

        Padding(
              padding: const EdgeInsets.only(left: 8,right: 8),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                    //  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Icon(Icons.phone_in_talk_sharp,color: Colors.green,size: 25,),
                        SizedBox(width: 20,),

                        Text("Contact Us",style: TextStyle(color: Colors.black),),
                      ],
                    ),
                    Icon(Icons.arrow_forward_ios_outlined,color: Colors.grey,size: 22,)

                  ],
                ),
            ),),
            SizedBox(height: 22,),
            Container(
              height: 50,
              width: 400,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(10)),
                border: Border.all(color: Colors.grey),
              ),
              child: TextButton(onPressed: (){
                Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context)=>Welcome(),),);
              }, child:Text("Logout",style: TextStyle(fontSize: 15,color: Colors.black,fontWeight: FontWeight.bold),) ),
            ),



          ],
        ),
      ),
    );
  }
}