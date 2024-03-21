import 'package:flutter/material.dart';

class RadioButtonCustom extends StatefulWidget {

  @override
  State<RadioButtonCustom> createState() => _RadioButtonCustomState();
}

class _RadioButtonCustomState extends State<RadioButtonCustom> {
  bool isOn = false;
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Theme.of(context).backgroundColor,
      child: Switch(

        inactiveThumbColor: Colors.white,
        activeColor: Colors.green,
        value: isOn,
        onChanged: (value){
          setState(() {
            isOn = !isOn;
          });
        },
      ),

    );
  }
}