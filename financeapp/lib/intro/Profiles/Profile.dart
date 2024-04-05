import 'package:financeapp/intro/welcome,signup%20page/WelcomePage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

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
          title: Text('Profile',style: TextStyle(color: Colors.white),),
          centerTitle: true,
          backgroundColor: Colors.indigo,
        ),
        body: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [

              SizedBox(
                  height: 150,
                  child: Image.network("https://images.pexels.com/photos/1213447/pexels-photo-1213447.jpeg?auto=compress&cs=tinysrgb&w=600"
                      ,fit:BoxFit.cover,
                    width: MediaQuery.of(context).size.width,
                  ),


              ),
              SizedBox(height: 10,),
              Text('Will Kim',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
              ListTile(
                leading:Icon(Icons.account_circle,color: Colors.indigo,),
                title:  Text('Account Details'),
                trailing: Icon(Icons.arrow_forward_ios_outlined),
              ),
              ListTile(
                leading:Icon(Icons.settings,color: Colors.grey,),
                title:  Text('Settings'),
                trailing: Icon(Icons.arrow_forward_ios_outlined),
              ),
              ListTile(
                leading:Icon(Icons.wifi_calling_outlined,color: Colors.green,),
                title:  Text('Contact Us'),
                trailing: Icon(Icons.arrow_forward_ios_outlined),
              ),
              SizedBox(height: 10,),
              Center(
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.indigo.shade900
                  ),
                  height: 50,width: 250,
                  child: TextButton(
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(builder: (context)=>WelcomePage()));
                    },
                    child:Text('Log Out',style: TextStyle(color: Colors.white,fontSize: 15,fontWeight: FontWeight.bold),),
                  ),
                ),
              ),
            ],
          ),
        ),

      );
  }

}