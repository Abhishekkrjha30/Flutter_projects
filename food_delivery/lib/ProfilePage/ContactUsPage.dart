import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

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
     // backgroundColor: Colors.grey.shade100,
      appBar: AppBar(
        backgroundColor: Theme.of(context).primaryColor,
        iconTheme: IconThemeData(color: Colors.green),
        title: Text('Contact Us',style: TextStyle(fontWeight: FontWeight.bold),),
        centerTitle: true,
        actions: [
          IconButton(onPressed: (){}, icon: Icon(Icons.map)),
          IconButton(onPressed: (){}, icon: Icon(Icons.shopping_cart_outlined,)),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(5),
        child: Container(
          color: Theme.of(context).primaryColor,
          child: ListView(
            children: [
              SizedBox(height: 30,),
              Column(
                children: [
                  Icon(Icons.home,color: Colors.green,size: 20,),
                  Text('Address:',style: TextStyle(color: Colors.green,fontSize: 18),),
                  Text('Patna Bihar-800020',style: TextStyle(),),
                ],
              ),
              SizedBox(height: 30,),
              Divider(),
              Column(
                children: [
                  Icon(Icons.phone,color: Colors.green,size: 20,),
                  Text('Phone:',style: TextStyle(color: Colors.green,fontSize: 18),),
                  Text('8622074071',style: TextStyle(),),
                ],
              ),
              SizedBox(height: 30,),
              Divider(),
              Column(
                children: [
                  Icon(Icons.attach_email,color: Colors.green,size: 20,),
                  Text('E-mail:',style: TextStyle(color: Colors.green,fontSize: 18),),
                  Text('abhi@gmail.com',style: TextStyle(),),
                ],
              ),
              SizedBox(height: 30,),
              Divider(
                thickness: 3,
              ),
              SizedBox(height: 100,),
              Align(
                alignment: Alignment.bottomRight,
                child: CircleAvatar(
                  radius: 30,
                  backgroundColor: Colors.green,
                  child: TextButton(onPressed: callTo
                  , child: Icon(Icons.phone,color: Colors.white,)),
                ),
              )



            ],
          ),
        ),
      ),
    );
  }

  void callTo()async{
    var url=Uri.parse("tel:8622074071");

    if(await canLaunchUrl(url)){
      await launchUrl(url);
    }else{

    }

  }
}