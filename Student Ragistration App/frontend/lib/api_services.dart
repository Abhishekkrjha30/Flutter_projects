import 'dart:convert';
import 'dart:js';

import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:student_teacher_ragistration_app/model/loginmodel.dart';
import 'package:http/http.dart';
import 'package:http/http.dart' as http;
import 'package:student_teacher_ragistration_app/model/signupmodel.dart';

import 'model/userListModel.dart';
import 'model/usermodel.dart';


class ApiServices{
String token="";
  //LOG IN
  Future<LogInModel?> signIn(String username,String password)async{
    try {
      var url=Uri.parse("http://localhost:8080/api/auth/signin");
      var response=await http.post(
          url,
          // headers: {
          //   HttpHeaders.contentTypeHeader:"application/json"
          // },
          body:{
            "username": username,
            "password": password,
          }
      );
      if(response.statusCode==200){
        LogInModel model=LogInModel.fromJson(jsonDecode(response.body));
        return model;
      }
    }
    catch(e){
      print(e);
    }
  }


// SIGN UP
  Future<dynamic?> signUp(String username,String firstName,String lastName ,
      String email,String contactNumber,String password)async{
    try {
      var url=Uri.parse("http://localhost:8080/api/auth/signup");
      var response=await http.post(
          url,
          // headers: {
          //   HttpHeaders.contentTypeHeader:"application/json"
          // },
          body:{
            "username": username,
            "firstName": firstName,
            "lastName": lastName,
            "email": email,
            "contactNumber": contactNumber,
            "password": password,
          }
      );
     // print(response.body);
      if(response.statusCode==200){

      //  SignUpModel model=jsonDecode(response.body);
      //  model.message="User registered successfully!";
          return response.body;
      }if(response.statusCode==400){

        //SignUpModel model=jsonDecode(response.body);
       // model.message="Error: This contact number is is already registered!";
        return response.body;
      }
    }
    catch(e){
      print(e);
    }
  }


//   //get user list
  Future<List<UserModel>?> getUserList()async{
    var sharedpref=await SharedPreferences.getInstance();
    token =(sharedpref.getString("usertoken")??"");
    try {
      var url=Uri.parse("http://localhost:8080/api/v1/student/getalluserdetails");
      var response=await http.get(
          url,
           headers: {
             'Authorization':'Bearer $token',
           },
      );
      if(response.statusCode==200){
      //  final data= jsonDecode(response.body.toString());
       List<UserModel> model=List<UserModel>.from(json.decode(response.body).map((x)=>UserModel.fromJson(x)));
        return model;
      }
    }
    catch(e){
      print(e);
    }
  }
 //get user details
  Future<UserModel?> getUser()async{
    var sharedpref=await SharedPreferences.getInstance();
    token =(sharedpref.getString("usertoken")??"");

    try {
      var url=Uri.parse("http://localhost:8080/api/v1/student/getuserdetail");


      var response=await http.get(
        url,
        headers: {
          'Authorization':'Bearer $token',
        },
      );
      if(response.statusCode==200){
        //  final data= jsonDecode(response.body.toString());

        UserModel model=UserModel.fromJson(jsonDecode(response.body));
        return model;
      }

    }
    catch(e){
      print(e);
    }
  }


}
/*
Future<List<Welcome>> fetchData() async {
    final response = await http.get(Uri.parse("http://localhost:8080/api/a1/details/getallcustomer"));
    final data= jsonDecode(response.body.toString());

    if (response.statusCode == 200){
      for(Map<String,dynamic> index in data){
        welcome.add(Welcome.fromJson(index));
      }
      return welcome;
      // Do something with the data
    }
    else{
      return welcome;
    }
  }
 */