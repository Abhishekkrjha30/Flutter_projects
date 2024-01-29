import 'package:flutter/material.dart';

class NotificationPage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return NotificationStatus();
  }

}

class NotificationStatus extends State<NotificationPage>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text("Notifications",style: TextStyle(color: Colors.white)),
        centerTitle: true,
       // leading: Icon(Icons.arrow_back_ios,color: Colors.white,),

      ),
      body: ListView(
        children: [
              Padding(
                padding: const EdgeInsets.only(top: 20,left: 50),
                child: Text('TRANSACTIONS',style:TextStyle(color: Colors.grey,fontSize: 12),),
              ),
              ListTile(
                leading: Icon(Icons.list_alt,color: Colors.grey,),
                title: Text('you paid 25 with your Bofa credit card Safeway',
                  style:TextStyle(fontSize: 15),),
                trailing: Icon(Icons.circle,size: 10,color: Colors.red,),
              ),
          Padding(
            padding: const EdgeInsets.only(left: 50),
            child: Text('12 hours ago',style:TextStyle(color: Colors.grey,fontSize: 12),),
          ),
          Divider(
            thickness:0.5,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 50),
            child: Text('SALARY RECEIVED',style:TextStyle(color: Colors.grey,fontSize: 12),),
          ),
          ListTile(
            leading: Icon(Icons.money,color: Colors.grey,),
            title: Text('you received 25000 from your employer',
              style:TextStyle(fontSize: 15),),
            trailing: Icon(Icons.circle,size: 10,color: Colors.red,),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 50),
            child: Text('one day ago',style:TextStyle(color: Colors.grey,fontSize: 12),),
          ),
          Divider(
            thickness:0.5,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 50),
            child: Text('PORTFOLIO MILESTONE',style:TextStyle(color: Colors.grey,fontSize: 12),),
          ),
          ListTile(
            leading: Icon(Icons.arrow_downward_outlined,color: Colors.grey,),
            title: Text('Congratulation! Your net worth just surpassed 10,000',
              style:TextStyle(fontSize: 15),),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 50),
            child: Text('one day ago',style:TextStyle(color: Colors.grey,fontSize: 12),),
          ),
          Divider(
            thickness:0.5,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 50),
            child: Text('DIVIDEND RECEIVED',style:TextStyle(color: Colors.grey,fontSize: 12),),
          ),
          ListTile(
            leading: Icon(Icons.chat,color: Colors.grey,),
            title: Text('you received a dividend in the amount of 27000',
              style:TextStyle(fontSize: 15),),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 50),
            child: Text('one day ago',style:TextStyle(color: Colors.grey,fontSize: 12),),
          ),

          Divider(
            thickness:0.5,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 50),
            child: Text('SHARES BOUGHT',style:TextStyle(color: Colors.grey,fontSize: 12),),
          ),
          ListTile(
            leading: Icon(Icons.person,color: Colors.grey,),
            title: Text('you have just bought 53 shares of TATA',
              style:TextStyle(fontSize: 15),),
            trailing: Icon(Icons.circle,size: 10,color: Colors.red,),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 50),
            child: Text('one day ago',style:TextStyle(color: Colors.grey,fontSize: 12),),
          ),

          Divider(
            thickness:0.5,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 50),
            child: Text('DEPOSITE',style:TextStyle(color: Colors.grey,fontSize: 12),),
          ),
          ListTile(
            leading: Icon(Icons.monetization_on_rounded,color: Colors.grey,),
            title: Text('Congratulation! Your net worth just surpassed 10,000',
              style:TextStyle(fontSize: 15),),
            trailing: Icon(Icons.circle,size: 10,color: Colors.red,),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 50),
            child: Text('one day ago',style:TextStyle(color: Colors.grey,fontSize: 12),),
          ),





        ],
      ),
    );
  }
}