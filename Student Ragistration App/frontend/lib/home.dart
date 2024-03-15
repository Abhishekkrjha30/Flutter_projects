import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:student_teacher_ragistration_app/api_services.dart';
//import 'dart:typed_data';

import 'package:student_teacher_ragistration_app/main.dart';
import 'package:student_teacher_ragistration_app/model/usermodel.dart';
import 'package:student_teacher_ragistration_app/profile.dart';
import 'package:student_teacher_ragistration_app/signup.dart';

class Home extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return HomeState();
  }

}

class HomeState extends State<Home> {
  List<UserModel> userModel=[];
  String token="";
  @override
  void initState(){
   // gettoken();
    getdata();


  }
void getdata()async {
  await ApiServices().getUserList().then((value) {
    setState(() {
      userModel = value!;
    });
  });
}


  // void gettoken()async{
  //   var sharedpref=await SharedPreferences.getInstance();
  //   setState(() {
  //     token =(sharedpref.getString("usertoken")??"");
  //   });


 // }
   @override
  Widget build(BuildContext context) {



    return Scaffold(
      backgroundColor: Colors.indigo,

//backgroundColor: Colors.white,
      body:ListView(
        children: [
          Container(
            // width: MediaQuery.of(context).size.width,
            height: 100,
                padding: EdgeInsets.only(top: 20),
                child:Center(
                  child: Text("Student List",style: TextStyle(fontSize: 30,
                    color: Colors.white,fontWeight: FontWeight.bold,letterSpacing:1.5,),),
                ),


          ),
          Container(
            // width: 500,
            height:1000,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.only(topRight: Radius.circular(40),topLeft: Radius.circular(40)),
              //  color: Colors.white
            ),
            child:Container(
              color: Colors.white,
              child: ListView.builder(
                itemCount: userModel.length,
                itemBuilder: (context,index){
                  return ListTile(

                    leading: ClipRRect(
                      borderRadius: BorderRadius.circular(25),
                      child: Image.network('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSYrKKpl8YZOURQz2Vg30DM4QPFwWhh0UJ601iTTwJexs1ELiLD1e3fahGbnLutiXX5bbo&usqp=CAU',
                        fit: BoxFit.cover,
                        width: 50,
                        height: 50,
                      ),
                    ),

                    trailing:IconButton(onPressed: (){}, icon:Icon(Icons.phone),color: Colors.green,),
                    title:TextButton(
                      onPressed: (){

                      },
                      child:Column(
                        children: [
                          Text("${userModel[index].firstName}${userModel[index].lastName}"),
                          Text("Email:${userModel[index].email} | Mob:${userModel[index].contactNumber}"),
                          Divider(
                            thickness: 2,
                          ),
                        ],
                      ) ,
                    )
                     );

                },

              ),
            )
          ),

        ],
      ),
    );
  }

}
/*
import 'dart:convert';

import 'package:api_call/model.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<Welcome> welcome =[];

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future:fetchData(),
      builder: (context,snapshot) {
        if(snapshot.hasData) {
          return ListView.builder(
              itemCount: welcome.length,
              itemBuilder: (context, index) {
                return Container(
                  height: 150,
                  color: Colors.cyan,
                  margin: EdgeInsets.all(11),
                  padding: EdgeInsets.all(11),
                  child: Column(
                    children: [
                      Text("Customer Details.", style: TextStyle(
                          fontWeight: FontWeight.bold, color: Colors.yellow),),
                      Text('id: ${welcome[index].id}'),
                      Text('Name: ${welcome[index].name}'),
                      Text('Phone no.: ${welcome[index].phone}'),
                      Text('Address: ${welcome[index].address}'),
                    ],
                  ),
                );
              }
          );
        }
        else{
          return Center(child: CircularProgressIndicator(),);
        }
        }

    );
  }
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

}



 */
