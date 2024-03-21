
import 'package:flutter/material.dart';

import 'RadioButton.dart';

class SettingPage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return SettingPageState();
  }

}

class SettingPageState extends State<SettingPage>{
  bool status=false;
  var textvalue='switch is off';
  void switchstatus(bool value){

    if(status==false){
      setState(() {
        status=true;
      });
    }
    else{
      setState(() {
        status=false;
      });
    }

  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
    //  backgroundColor: Colors.grey.shade100,
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.green),
        backgroundColor: Theme.of(context).backgroundColor,

        // elevation: 5,
        title:  Text("Settings",style: TextStyle(letterSpacing: 0.6,fontWeight: FontWeight.bold)),
        centerTitle: true,
        //leading: Icon(Icons.arrow_back_ios,color: Colors.white,),
      ),
      body: ListView(
        children: [

          Padding(
            padding: const EdgeInsets.all(10),
            child: Text("Push Notification",style:TextStyle(color: Colors.grey,fontSize: 20),),
          ),


          //SizedBox(height: 10,),
          Container(
            height: 200,
            color:Theme.of(context).primaryColor,
            child: ListView(
              children: [
                ListTile(
                  title:Text('Allow Push Notification',style: TextStyle(fontSize: 18),),
                  trailing:RadioButtonCustom(),
                ),
                ListTile(
                  title:Text('Order Updates',style: TextStyle(fontSize: 18),),
                  trailing:RadioButtonCustom(),
                ),
                ListTile(
                  title:Text('New Arrivals',style: TextStyle(fontSize: 18),),
                  trailing:RadioButtonCustom(),
                ),
                ListTile(
                  title:Text('Promotions',style: TextStyle(fontSize: 18),),
                  trailing:RadioButtonCustom(),
                ),
                Divider(
                  thickness: 5,
                ),
              ],
            ),
          ),
          SizedBox(height: 40,),
          Container(
            height: 40,
            color:Theme.of(context).primaryColor,

            child: TextButton(onPressed: (){},
              child:Text('Save',style: TextStyle(fontSize: 22,color: Colors.green),),
            ),
          ),
          Divider(thickness: 3,)


        ],
      ),

    );
  }
}






