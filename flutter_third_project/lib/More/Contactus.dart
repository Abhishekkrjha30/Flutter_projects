import 'package:flutter/material.dart';

class ContactUs extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return ContactUsState();
  }

}

class ContactUsState extends State<ContactUs>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black12,
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Center(child: Text("Contact Us",style: TextStyle(color: Colors.white),)),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: Container(
          color: Colors.white,
          child: ListView(
            children: [
              SizedBox(height: 30,),
              Column(
                children: [
                  Icon(Icons.home,color: Colors.blue,size: 20,),
                  Text('Address:',style: TextStyle(color: Colors.blue,fontSize: 18),),
                  Text('Patna Bihar-800020',style: TextStyle(),),
                ],
              ),
              SizedBox(height: 30,),
              Divider(),
              Column(
                children: [
                  Icon(Icons.phone,color: Colors.blue,size: 20,),
                  Text('Phone:',style: TextStyle(color: Colors.blue,fontSize: 18),),
                  Text('8622074071',style: TextStyle(),),
                ],
              ),
 SizedBox(height: 30,),
              Divider(),
              Column(
                children: [
                  Icon(Icons.attach_email,color: Colors.blue,size: 20,),
                  Text('E-mail:',style: TextStyle(color: Colors.blue,fontSize: 18),),
                  Text('abhi@gmail.com',style: TextStyle(),),
                ],
              ),
              SizedBox(height: 30,),
              Divider(),


            ],
          ),
        ),
      ),
    );
  }
}
