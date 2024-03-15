import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:student_teacher_ragistration_app/login.dart';
import 'package:student_teacher_ragistration_app/main.dart';
import 'package:student_teacher_ragistration_app/model/loginmodel.dart';
import 'package:student_teacher_ragistration_app/model/usermodel.dart';
import 'package:student_teacher_ragistration_app/signup.dart';
import 'package:student_teacher_ragistration_app/splashscreen.dart';

import 'api_services.dart';

class Profile extends StatefulWidget{

  const Profile({Key?key}):super(key: key);
  @override
  State<StatefulWidget> createState() {
    return ProfileState();
  }


}
UserModel userModel=UserModel();
class ProfileState extends State<Profile> {

  @override
  void initState() {
    getdata();

  }
  void getdata()async {
    await ApiServices().getUser().then((value) {
      setState(() {
        userModel = value!;
      });
    });
  }


  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Colors.indigo,
//backgroundColor: Colors.white,
      body:ListView(
        children: [
          Container(
            // width: MediaQuery.of(context).size.width,
            height: 255,
            child: Column(
              children: [
                SizedBox(height: 20,),
                ClipRRect(
                  borderRadius: BorderRadius.circular(50),
                  child: Image.network('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSYrKKpl8YZOURQz2Vg30DM4QPFwWhh0UJ601iTTwJexs1ELiLD1e3fahGbnLutiXX5bbo&usqp=CAU',
                    fit: BoxFit.cover,
                    width: 100,
                    height: 100,
                  ),

                ),
                SizedBox(height: 10,),
                RichText(
                    text:TextSpan(
                        children: [
                          TextSpan(
                              text: " Hi ",
                              style: TextStyle(
                                //   fontStyle:FontStyle.italic,
                                fontSize: 35.0,
                                color: Colors.grey,
                                //  fontWeight: FontWeight.bold,
                                letterSpacing:1.5,
                              )
                          ), TextSpan(
                              text: "${userModel.firstName}${userModel.lastName}\n",
                              style: TextStyle(
                                // fontStyle:FontStyle.italic,
                                fontSize: 30.0,
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                letterSpacing:1.5,
                              )
                          ),
                        //  SizedBox(height: 5,),
                          TextSpan(
                              text: "     Class: Full Stack | Roll No.: ${userModel.id}\n",
                              style: TextStyle(
                                //  fontStyle:FontStyle.italic,
                                fontSize: 15,
                                color: Colors.grey,
                                fontWeight: FontWeight.bold,
                                // letterSpacing:1,
                              )
                          ),
                        ]
                    )
                ),
                Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [

                     // SizedBox(width: 100,),
                      IconButton(onPressed: (){}, icon:Icon(Icons.phone),color: Colors.green,),
                      Text('${userModel.contactNumber} |',style: TextStyle( color: Colors.grey,
                        fontWeight: FontWeight.bold,
                      ),),
                   IconButton(onPressed: (){}, icon:Icon(Icons.email),color: Colors.green,),
                      Text('${userModel.email}',style: TextStyle( color: Colors.grey,
                        fontWeight: FontWeight.bold,
                      ),)
                    ],
                  ),
                )
              ],
            ),
          ),
          Container(
            // width: 500,
            height: 500,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.only(topRight: Radius.circular(40),topLeft: Radius.circular(40)),
                color: Colors.white
            ),
            child:Column(
              children: [
                SizedBox(height: 30,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      height: 130,
                      width: 190,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.indigo

                      ),
                      child:TextButton(onPressed: (){
                        // Navigator.of(context).push(MaterialPageRoute(builder: (context)=>NavigationBarApp(),),);

                      }, child:Column(
                          children: [
                            SizedBox(height: 10,),
                            IconButton(onPressed: (){}, icon:Icon(Icons.book_outlined,size: 34,),color: Colors.white,),
                            Text('Courses',style: TextStyle( color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),),
                          ]
                      ),

                      ),
                       ),
                    Container(
                      height: 130,
                      width: 190,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.indigo

                      ),

                      child:TextButton(onPressed: (){
                       // Navigator.of(context).push(MaterialPageRoute(builder: (context)=>NavigationBarApp(),),);

                      }, child:Column(
                        children: [
                          SizedBox(height: 10,),
                          IconButton(onPressed: (){}, icon:Icon(Icons.assignment_rounded,size: 34,),color: Colors.white,),
                          Text('Assignments',style: TextStyle( color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),),
                      ]
                    ),

                      ),
                    )
                  ],
                )
                ,SizedBox(height: 30,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      height: 130,
                      width: 190,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.indigo

                      ),
                        child:TextButton(onPressed: (){
                          // Navigator.of(context).push(MaterialPageRoute(builder: (context)=>NavigationBarApp(),),);

                        }, child:Column(
                            children: [
                              SizedBox(height: 10,),
                              IconButton(onPressed: (){

                              }, icon:Icon(Icons.assignment_rounded,size: 34,),color: Colors.white,),
                              Text('Result',style: TextStyle( color: Colors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),),
                            ]
                        ),),

                ),
                    Container(
                      height: 130,
                      width: 190,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.indigo

                      ),
                        child:TextButton(onPressed: (){
                          // Navigator.of(context).push(MaterialPageRoute(builder: (context)=>NavigationBarApp(),),);

                        }, child:Column(
                            children: [
                              SizedBox(height: 10,),
                              IconButton(onPressed: (){}, icon:Icon(Icons.money,size: 34,),color: Colors.white,),
                              Text('Fees',style: TextStyle( color: Colors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),),
                            ]
                        ),

                        ),


                    )
                  ],
                )

              ],
            ) ,

          )
        ],
      ),
    );
  }

}

