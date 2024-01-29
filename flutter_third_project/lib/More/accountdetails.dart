import 'package:flutter/material.dart';

class AccountDetails extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return AccountDetailsState();
  }

}

class AccountDetailsState extends State<AccountDetails>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black12,
      appBar: AppBar(

        backgroundColor: Colors.blue,
        elevation: 5,

        title: Center(child: Text("Account Details",style: TextStyle(color: Colors.white))),
        //leading: Icon(Icons.arrow_back_ios,color: Colors.white,),
        actions: [

          Padding(
            padding: const EdgeInsets.only(right: 15),
            child: Text("Save",style: TextStyle(color: Colors.white,fontSize: 18),),
          ),
        ],
      ),
      body: ListView(
        children: [
          Container(
            height: 60,
           // color: Colors.grey,
            child: Padding(
              padding: const EdgeInsets.only(top: 30,left: 20),
              child: Text("public profile",style:TextStyle(color: Colors.black),),
            ),
          ),
          Container(
            height: 240,
            color: Colors.white,
            child: ListView(
              children: [
                ListTile(
                  title:Text('First Name',style: TextStyle(fontSize: 20),),
                    trailing:Text('Abhishek',style: TextStyle(fontSize: 20),),
                ),
                Divider(
                  indent: 25,
                  endIndent: 25,
                ),
                ListTile(
                  title:Text('Last Name',style: TextStyle(fontSize: 20),),
                  trailing:Text('jha',style: TextStyle(fontSize: 20),),
                ),Divider(
                  indent: 25,
                  endIndent: 25,
                ),
                ListTile(
                  title:Text('Username',style: TextStyle(fontSize: 20),),
                  trailing:Text('Abhi',style: TextStyle(fontSize: 20,color: Colors.grey),),
                ),Divider(
                  indent: 25,
                  endIndent: 25,
                ),
                ListTile(
                  title:Text('Gender',style: TextStyle(fontSize: 20,),),
                  trailing:Text('Male',style: TextStyle(fontSize: 20,color: Colors.grey),),
                ),
              ],
            ),
          ),
          Container(
            height: 50,
            child: Padding(
              padding: const EdgeInsets.only(top: 20,left: 12),
              child: Text("PRIVATE DETAILS",style: TextStyle(fontSize: 15),),
            ),
          ),
 Container(
            height: 55,
            color: Colors.white,
            child:ListTile(
              title: Text("E-mail Address",style: TextStyle(fontSize: 20),),
              trailing: Text("abhi@gmail.com",style: TextStyle(fontSize: 20),),
            )
          )


        ],
      ),

    );
  }
}