import 'package:flutter/material.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'package:flutter_third_project/More/switchRadio.dart';

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
      backgroundColor: Colors.black12,
      appBar: AppBar(

        backgroundColor: Colors.blue,
        elevation: 5,

        title: Text("Setting",style: TextStyle(color: Colors.white)),
      centerTitle: true,
      //  leading: Icon(Icons.arrow_back_ios,color: Colors.white,),
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
            height: 50,
            // color: Colors.grey,
            child: Padding(
              padding: const EdgeInsets.only(top: 25,left: 20),
              child: Text("GENERAL SETTINGS",style:TextStyle(color: Colors.black,fontSize: 13),),
            ),
          ),
      Container(
            height: 300,
            color: Colors.white,
            child: ListView(
              children: [
                ListTile(
                  title:Text('Allow Push Notification',style: TextStyle(fontSize: 20),),
                  trailing:RadioButtonCustom(),
                ),

                Divider(
                  indent: 25,
                  endIndent: 25,
                ),
                ListTile(
                  title:Text('Notify on any transactions',style: TextStyle(fontSize: 20),),
                  trailing:RadioButtonCustom(),
                ),
                Divider(
                  indent: 25,
                  endIndent: 25,
                ),
                ListTile(
                  title:Text('Breaking news notifications',style: TextStyle(fontSize: 20),),
                  trailing:RadioButtonCustom(),
                ),
                Divider(
                  indent: 25,
                  endIndent: 25,
                ),
                ListTile(
                  title:Text('Net worth milestones',style: TextStyle(fontSize: 20),),
                  trailing:RadioButtonCustom(),
                ),
                Divider(
                  indent: 25,
                  endIndent: 25,
                ),
                ListTile(
                  title:Text('Allow Location Access',style: TextStyle(fontSize: 20),),
                  trailing:RadioButtonCustom(),
                ),
              ],
            ),
          ),
          Container(
            height: 50,
            child: Padding(
              padding: const EdgeInsets.only(top: 20,left: 12),
              child: Text("STOCKS NOTIFICATIONS",style: TextStyle(fontSize: 13),),
            ),
          ),
    Container(
    height: 120,
    color: Colors.white,
    child: ListView(
    children: [
    ListTile(
    title:Text('Stocks drops of %',style: TextStyle(fontSize: 20),),
    trailing:RadioButtonCustom(),
    ),
    Divider(
    indent: 25,
    endIndent: 25,
    ),
    ListTile(
    title:Text('Stocks increases of %',style: TextStyle(fontSize: 20),),
    trailing:RadioButtonCustom(),
    ),
    ]
    ),),
    Container(
              height: 55,
              color: Colors.black12,
              child:ListTile(
                title: Text("CRYPTO NOTIFICATIONS",style: TextStyle(fontSize: 15),),
              )
          )

],
    ),

    );
  }
}









// import 'package:flutter/material.dart';
// import 'package:flutter_switch/flutter_switch.dart';
//
// class SettingPage extends StatefulWidget{
//   @override
//   State<StatefulWidget> createState() {
//     return SettingPageState();
//   }
//
// }
//
// class SettingPageState extends State<SettingPage>{
//   bool status=false;
//   bool isSwitchon=false;
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       //backgroundColor: Colors.grey,
//       appBar: AppBar(
//
//         backgroundColor: Colors.blue,
//         elevation: 5,
//
//         title: Center(child: Text("Setting",style: TextStyle(color: Colors.white))),
//         leading: Icon(Icons.arrow_back_ios,color: Colors.white,),
//         actions: [
//
//           Padding(
//             padding: const EdgeInsets.only(right: 15),
//             child: Text("Save",style: TextStyle(color: Colors.white,fontSize: 18),),
//           ),
//         ],
//       ),
//       body: ListView(
//         children: [
//           Container(
//             height: 30,
//             // color: Colors.grey,
//             child: Padding(
//               padding: const EdgeInsets.only(top: 30,left: 20),
//               child: Text("GENERAL SETTINGS",style:TextStyle(color: Colors.black),),
//             ),
//           ),
//           Container(
//             height: 240,
//             color: Colors.white,
//             child: ListView(
//               children: [
//                 ListTile(
//                   title:Text('Allow Push Notification',style: TextStyle(fontSize: 20),),
//                   trailing:FlutterSwitch(
//                     activeColor: Colors.green,
//                     width: 100,
//                     height: 55,
//                     valueFontSize: 25,
//                     toggleSize: 45,
//                     borderRadius: 30,
//                     padding: 8,
//                     value: status, onToggle: (value) {
//                     setState(() {
//                       status=value;
//                     });
//                   },
//
//                   ),
//                 ),
//                 Divider(
//                   indent: 25,
//                   endIndent: 25,
//                 ),
//
//               ],
//             ),
//           ),
//           Container(
//             height: 50,
//             child: Padding(
//               padding: const EdgeInsets.only(top: 20,left: 12),
//               child: Text("PRIVATE DETAILS",style: TextStyle(fontSize: 15),),
//             ),
//           ),
//           Container(
//               height: 55,
//               color: Colors.white,
//               child:ListTile(
//                 title: Text("E-mail Address",style: TextStyle(fontSize: 20),),
//                 trailing: Text("abhi@gmail.com",style: TextStyle(fontSize: 20),),
//               )
//           )
//
//
//         ],
//       ),
//
//     );
//   }
// }