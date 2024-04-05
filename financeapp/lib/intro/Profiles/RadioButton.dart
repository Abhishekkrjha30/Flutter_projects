import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class RadioButtonCustom extends StatefulWidget{
  @override
  State<RadioButtonCustom> createState() => _RadioButtonCustomeState();
}

class _RadioButtonCustomeState extends State<RadioButtonCustom>{
  bool isOn = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
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