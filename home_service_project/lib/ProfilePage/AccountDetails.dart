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
      // backgroundColor: Colors.grey.shade100,
      appBar: AppBar(
        elevation: 1,
        iconTheme: IconThemeData(color: Colors.blue.shade900),
       // backgroundColor: Colors.blue.shade900,
        // elevation: 5,
        title:  Text("Account Details",style: TextStyle(letterSpacing: 0.6,fontWeight: FontWeight.bold,color: Colors.blue.shade900)),
        centerTitle: true,
        //leading: Icon(Icons.arrow_back_ios,color: Colors.white,),
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(10),
            child: Text("Public Info",style:TextStyle(color: Colors.grey,fontSize: 20),),
          ),
          Container(
            height: 120,
            color:Colors.white12,
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
                  thickness: 5,
                ),
              ],
            ),
          ),

          Padding(
            padding: const EdgeInsets.all(10),
            child: Text("Private Details",style:TextStyle(color: Colors.grey,fontSize: 20),),
          ),
          Container(
            height: 120,
            color:Colors.white12,
            child: ListView(
                children: [

                  ListTile(
                    title: Text("E-mail Address",style: TextStyle(fontSize: 20),),
                    trailing: Text("abhi@gmail.com",style: TextStyle(fontSize: 20),),
                  ),

                  Divider(
                    indent: 25,
                    endIndent: 25,
                  ),
                  ListTile(
                    title: Text("Phone Number",style: TextStyle(fontSize: 20),),
                    trailing: Text("8622074071",style: TextStyle(fontSize: 20),),
                  ),
                  Divider(
                    thickness: 5,
                  )

                ]
            ),),
          SizedBox(height: 40,),
          Container(
            height: 40,
            color:Colors.white12,
            child: TextButton(onPressed: (){},
              child:Text('Save',style: TextStyle(fontSize: 22,color: Colors.blue.shade900,fontWeight: FontWeight.bold),),
            ),
          ),
          Divider(thickness: 3,)

        ],
      ),

    );
  }
}