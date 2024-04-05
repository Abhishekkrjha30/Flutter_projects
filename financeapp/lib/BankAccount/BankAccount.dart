import 'package:flutter/material.dart';

import 'LinkAccount.dart';

class BankAccount extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return BankAccountState();
  }

}

class BankAccountState extends State<BankAccount>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title:Text('Your Financial Account',style: TextStyle(color: Colors.white),),
        centerTitle: true,
      ),
      body: ListView(
        children: [
          ListTile(
            onTap: (){
            },
            leading: Icon(Icons.energy_savings_leaf,color:Colors.purple,size: 40,),
            title: Text('WEALTHFRONT',style: TextStyle(fontSize: 12,color: Colors.grey,),),
            subtitle: Text('Personal Investment',style: TextStyle(fontSize: 16,color: Colors.black),),
            trailing: Text("9,2875",style: TextStyle(fontSize: 18,color: Colors.black),),
          ),
          Divider(thickness: 0.5,),
          ListTile(
            onTap: (){

            },
            leading: Icon(Icons.radar_outlined,color:Colors.green,size: 40,),
            title: Text('ROBINHOOD',style: TextStyle(fontSize: 12,color: Colors.grey,),),
            subtitle: Text('Robinhood Personal',style: TextStyle(fontSize: 16,color: Colors.black),),
            trailing: Text("7,123",style: TextStyle(fontSize: 18,color: Colors.black),),
          ),
          Divider(thickness: 0.5,),
          ListTile(
            onTap: (){

            },
            leading: Icon(Icons.ac_unit,color:Colors.indigo,size: 40,),
            title: Text('COINBASE PRO',style: TextStyle(fontSize: 12,color: Colors.grey,),),
            subtitle: Text('Personal Crypto',style: TextStyle(fontSize: 16,color: Colors.black),),
            trailing: Text("15,712",style: TextStyle(fontSize: 18,color: Colors.black),),
          ),
          Divider(thickness: 0.5,),
          ListTile(
            onTap: (){

            },
            leading: Icon(Icons.next_plan_sharp,color:Colors.greenAccent,size: 40,),
            title: Text('FIDLITY',style: TextStyle(fontSize: 12,color: Colors.grey,),),
            subtitle: Text('401(K)',style: TextStyle(fontSize: 16,color: Colors.black),),
            trailing: Text("12,012",style: TextStyle(fontSize: 18,color: Colors.black),),
          ),
          Divider(thickness: 0.5,),
          ListTile(
            onTap: (){

            },
            leading: Icon(Icons.camera,color:Colors.blueAccent,size: 40,),
            title: Text('CHARLES SCHWAB',style: TextStyle(fontSize: 12,color: Colors.grey,),),
            subtitle: Text('231 Brokerage',style: TextStyle(fontSize: 16,color: Colors.black),),
            trailing: Text("41,802",style: TextStyle(fontSize: 18,color: Colors.black),),
          ),

          Divider(thickness: 0.5,),
          ListTile(
            onTap: (){

            },
            leading: Icon(Icons.newspaper_outlined,color:Colors.cyan,size: 40,),
            title: Text('AMERICAN EXPRESS',style: TextStyle(fontSize: 12,color: Colors.grey,),),
            subtitle: Text('American Express Basic',style: TextStyle(fontSize: 16,color: Colors.black),),
            trailing: Text("500",style: TextStyle(fontSize: 18,color: Colors.black),),
          ), Divider(thickness: 0.5,),
          ListTile(
            onTap: (){

            },
            leading: Icon(Icons.generating_tokens_sharp,color:Colors.indigo,size: 40,),
            title: Text('CHASE BANK',style: TextStyle(fontSize: 12,color: Colors.grey,),),
            subtitle: Text('Sapphire Reserved',style: TextStyle(fontSize: 16,color: Colors.black),),
            trailing: Text("2,240",style: TextStyle(fontSize: 18,color: Colors.black),),
          ),
          SizedBox(height: 15,),
          Center(
            child: Container(
                width: 300,height: 50,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.indigo[900],

                ),
                child: TextButton(onPressed: (){
                  Navigator.of(context).push(MaterialPageRoute(builder: (context)=>LinkAccount()));

                },child:Text("Link Another Institution",style: TextStyle(color: Colors.white,fontSize: 18,fontWeight: FontWeight.bold),),)
            ),
          )



        ],
      ),
    );
  }
}