import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:student_teacher_ragistration_app/login.dart';

class LogOut extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return LogOutState();
  }

}
String token="";

class LogOutState extends State<LogOut>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(onPressed: (){
          delete();
          Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context)=>LogIn()));

        },child: Text("LogOut"),),
      ),
    );
  }
  void delete()async{
    var sharedpref=await SharedPreferences.getInstance();
    token =(sharedpref.getString("usertoken")??"");
    setState(() {

      sharedpref.clear();
    });

  }
}