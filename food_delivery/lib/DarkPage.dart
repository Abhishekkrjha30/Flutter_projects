import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'Provider/ThemeChanger.dart';

class DarkPage extends StatefulWidget{

  @override
  State<StatefulWidget> createState() {

    return DarkPageState();
  }

}

class DarkPageState extends State<DarkPage>{
  @override
  Widget build(BuildContext context) {
     final themeChanger=Provider.of<ThemeChanger>(context);

    return Scaffold(
      appBar: AppBar(
        title: Text('Theme changer'),
        centerTitle: true,
      ),
      body: Column(
        children: [
          RadioListTile<ThemeMode>(
            title: Text('Light Mode'),
              value: ThemeMode.light,
              groupValue: themeChanger.themeMode,
              onChanged: themeChanger.setTheme,
          ),
          RadioListTile<ThemeMode>(
            title: Text('Dark Mode'),
              value: ThemeMode.dark,
              groupValue: themeChanger.themeMode,
              onChanged: themeChanger.setTheme,
          ),

        ],
      ),


    );
  }
}


