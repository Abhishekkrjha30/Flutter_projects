import 'dart:convert';
import 'dart:io';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'package:http/http.dart' as http;
import 'package:student_teacher_ragistration_app/model/signupmodel.dart';
import 'api_services.dart';
import 'login.dart';

class SignUp extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return SignUpState();
  }
}

class SignUpState extends State<SignUp> {
 // SignUpModel signUpModel=SignUpModel();
  TextEditingController username=TextEditingController();
  TextEditingController firstName=TextEditingController();
  TextEditingController lastName=TextEditingController();
  TextEditingController email=TextEditingController();
  TextEditingController contactNumber=TextEditingController();
  TextEditingController password=TextEditingController();
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
                  borderRadius: BorderRadius.circular(20),
                  child: Image.network('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTQ71r0zLNbBTn35qjYqoDPNMkxntX9mAAC5A&usqp=CAU',
                    fit: BoxFit.cover,
                    width: 150,
                    height: 150,
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
                              text: "Student\n",
                              style: TextStyle(
                                // fontStyle:FontStyle.italic,
                                fontSize: 30.0,
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                letterSpacing:1.5,
                              )
                          ),
                          TextSpan(
                              text: "     sign up for continue ",
                              style: TextStyle(
                                //  fontStyle:FontStyle.italic,
                                fontSize: 17.0,
                                color: Colors.grey,
                                fontWeight: FontWeight.bold,
                                // letterSpacing:1,
                              )
                          ),
                        ]
                    )
                ),
              ],
            ),
          ),
          Container(
            // width: 500,
            height: 800,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.only(topRight: Radius.circular(40),topLeft: Radius.circular(40)),
                color: Colors.white
            ),
            child: Column(
              children: [
                SizedBox(height: 5,),
                Text("Please fill the details and create account ",style: TextStyle(fontSize: 15,color: Colors.grey),),
               SizedBox(height: 5,),
                Container(
                  height:35,
                  width: 400,
                  child: TextFormField(
                    controller: username,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      label:Text( "User Name",style: TextStyle(fontSize: 15,color: Colors.grey),),
                    ),
                  ),
                ),
                SizedBox(height: 5,),
                Container(
                  height: 35,
                  width: 400,
                  child: TextFormField(
                    controller: firstName,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      label:Text( "First Name",style: TextStyle(fontSize: 15,color: Colors.grey),),
                    ),
                  ),
                ), SizedBox(height: 5,),
                Container(
                  height: 35,
                  width: 400,
                  child: TextFormField(
                    controller: lastName,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      label:Text( "Last Name",style: TextStyle(fontSize: 15,color: Colors.grey),),
                    ),
                  ),
                ), SizedBox(height: 5,),
                Container(
                  height: 35,
                  width: 400,
                  child: TextFormField(
                    controller: email,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      label:Text( "Email",style: TextStyle(fontSize: 15,color: Colors.grey),),
                    ),
                  ),
                ),

                SizedBox(height: 5,),
                Container(
                  height: 35,
                  width: 400,
                  child: TextFormField(
                    controller: contactNumber,
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        label:Text( "Phone No.",style: TextStyle(fontSize: 15,color: Colors.grey),),
                        suffixIcon: Icon(Icons.remove_red_eye_rounded,color: Colors.grey,)
                    ),
                  ),
                ),
                SizedBox(height: 5,),
                Container(
                  height: 35,
                  width: 400,
                  child: TextFormField(
                    controller: password,
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        label:Text( "password",style: TextStyle(fontSize: 15,color: Colors.grey),),
                        suffixIcon: Icon(Icons.remove_red_eye_rounded,color: Colors.grey,)
                    ),
                  ),
                ),
                SizedBox(height: 15,),
                Container(
                  height: 50,
                  width: 350,
                  decoration: BoxDecoration(
                    color: Colors.indigo,
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: TextButton(onPressed: (){

                    ApiServices().signUp(username.text.toString(), firstName.text.toString(),
                        lastName.text.toString(), email.text.toString(), contactNumber.text.toString(),
                        password.text.toString()).then((value){
                      setState(() {
                        var model=value!;
                        print("Message: ");
                        print(model.toString());
                        Navigator.of(context).push(MaterialPageRoute(builder: (context)=>LogIn(),),);

                        //print(logInModel.user);
                      });
                    }).onError((error, stackTrace){
                      print(error);
                    });
                  }, child:Text("Sign Up",style: TextStyle(color: Colors.white),) ),
                ),
                //SizedBox(height:2),
                Container(
                  padding: EdgeInsets.only(left: 200),
                  child: TextButton(onPressed: (){
                    //  Navigator.of(context).push(MaterialPageRoute(builder: (context)=>NavigationBarApp(),),);
                  }, child:Text("Forget Password",style: TextStyle(color: Colors.grey,fontWeight: FontWeight.bold),) ),
                ),
               // SizedBox(height: 2,),
                Center(
                  child: Container(
                      //padding: EdgeInsets.only(left: 140),

                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text( "Already have an account ?"),
                          TextButton(onPressed: (){
                            Navigator.of(context).push(MaterialPageRoute(builder: (context)=>LogIn(),),);
                          }, child:Text(" Log In",style: TextStyle(color: Colors.yellow,fontWeight: FontWeight.bold),)
                          ),

                        ],
                      )

                  ),
                ),

              ],
            ),
          )
        ],
      ),
    );
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


/*
void signUp()async{

     var url="http://localhost:8080/api/auth/signup";
    var data={
      "username":username.text ,
      "firstName": firstName.text,
      "lastName": lastName.text,
      "email": email.text,
      "contactNumber": contactNumber.text,
      "password": password.text,
    };
    var bodyy=json.encode(data);
     var urlParse=Uri.parse(url);
    //
    Response response=await http.post(
        urlParse,
        body:bodyy,
        headers: {
    "Content-Type":"application/json"
    }
    );
     var message=jsonDecode(response.body);
     print(message);
  }
 */



/*
  Text("Please fill the details and create account ",style: TextStyle(fontSize: 15,color: Colors.grey),),
                    ],
                  ),
                ),
                SizedBox(height: 50,),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [

                    Container(
                      height: 50,
                      width: 400,
                      child: TextFormField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                          label:Text( "Full name",style: TextStyle(fontSize: 15,color: Colors.grey),),
                        ),
                      ),
                    ),
                    SizedBox(height: 20,),
                    Container(
                      height: 50,
                      width: 400,
                      child: TextFormField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                          label:Text( "Email",style: TextStyle(fontSize: 15,color: Colors.grey),),
                        ),
                      ),
                    ),
                    SizedBox(height: 20,),
                    Container(
                      height: 50,
                      width: 400,
                      child: TextFormField(
                        decoration: InputDecoration(
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20),
                            ),
                            label:Text( "Password",style: TextStyle(fontSize: 15,color: Colors.grey),),
                            suffixIcon: Icon(Icons.remove_red_eye,color: Colors.grey,)
                        ),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.only(left: 10),
                      child: Text("Password should be atleast 6 characters",style: TextStyle(color: Colors.grey),),
                    )
                  ],
                ),
                SizedBox(height: 40,),
                Container(
                  height: 50,
                  width: 800,
                  decoration: BoxDecoration(
                    color: Colors.red,
                    borderRadius: BorderRadius.circular(11),
                  ),
                  child: TextButton(onPressed: (){
                    Navigator.of(context).push(MaterialPageRoute(builder: (context)=>LogIn(),
                    ),);
                  }, child:Text("Log In",style: TextStyle(color: Colors.white),) ),
                ),
                SizedBox(height: 30,),

                RichText(text: TextSpan(
                    children: [
                      TextSpan(text: "Already have an account ?  "),
                      TextSpan(text: " Log In ",style: TextStyle(color: Colors.red)),
                    ]

                )),
                SizedBox(height: 10,),
                Text("Or connect with",style: TextStyle(color:Colors.grey),),
                SizedBox(height: 20,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.facebook_rounded,size: 50,color: Colors.indigo,),
                    SizedBox(width: 10,),
                    Icon(Icons.telegram,size: 50,color: Colors.blue,),
                    SizedBox(width: 10,),
                    Icon(Icons.whatshot,size: 50,color: Colors.redAccent,),
                  ],
                ),





                SizedBox(height: 30,)



              ],
            ),
          ),
        ),
 */