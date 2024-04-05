import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'RadioButton.dart';

class SettingPage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return SettingPageState();
  }
  
}

class SettingPageState extends State<SettingPage>{
  
    bool status = false;
    var textvalue ="switch is off";
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
  Widget build(BuildContext context){
      return Scaffold(
        backgroundColor: Colors.blue,
        appBar: AppBar(
          backgroundColor: Colors.blue,
          elevation: 5,
          title: Text('Setting',style: TextStyle(color: Colors.white),),
          centerTitle: true,
          actions: [
            Padding(
                padding: EdgeInsets.only(right: 15),
              child: Text("Save",style: TextStyle(color: Colors.white,fontSize: 18),),
            )
          ],
        ),
        body: ListView(
          children: [
            Container(
              height: 50,
              child: Padding(padding: EdgeInsets.only(top: 25,left: 20),
                child: Text("GENERAL SETTINGS",style: TextStyle(color: Colors.black,fontSize: 13),),
              ),
            ),
            Container(
              height: 300,
              color: Colors.white,
              child: ListView(
                children: [
                  ListTile(
                    title: Text('Allow Push Notification',style: TextStyle(fontSize: 20),),
                    trailing: RadioButtonCustom(),
                  ),
                  Divider(
                    indent: 25,
                    endIndent: 25,
                  ),
                  ListTile(
                    title: Text('Notify on any transactions',style: TextStyle(fontSize: 20),),
                    trailing: RadioButtonCustom(),
                  ),
                  Divider(
                    indent: 25,
                    endIndent: 25,
                  ),
                  ListTile(
                    title: Text('Breaking news notifications',style: TextStyle(fontSize: 20),),
                    trailing: RadioButtonCustom(),
                  ),
        Divider(
          indent: 25,
          endIndent: 25,
        ),
                  ListTile(
                    title: Text('Net worth milestones',style: TextStyle(fontSize: 20),),
                    trailing: RadioButtonCustom(),
                  ),
                  Divider(
                    indent: 25,
                    endIndent: 25,
                  ),
                  ListTile(
                    title:  Text('ALLOW LOCATION ACCESS',style: TextStyle(fontSize: 20),),
                    trailing: RadioButtonCustom(),
                  ),
                ],
              ),
            ),
            Container(
              height: 120,
              color: Colors.white,
              child: ListView(
                children: [
                  ListTile(
                    title: Text('Stocks drops of %',style: TextStyle(fontSize: 20),),
                    trailing: RadioButtonCustom(),
                  ),
                  Divider(
                    indent: 25,
                    endIndent: 25,
                  ),
                  ListTile(
                    title: const Text('Stocks increase of %',style: TextStyle(fontSize: 20),),
                    trailing: RadioButtonCustom(),
                  ),
                ],
              ),
            ),
            Container(
              height: 55,
              color: Colors.black12,
              child: ListTile(
                title: Text("CRYPTO NOTIFICATIONS",style: TextStyle(fontSize: 15),),
              ),
            )
          ],
        ),
      );
  }
  
}