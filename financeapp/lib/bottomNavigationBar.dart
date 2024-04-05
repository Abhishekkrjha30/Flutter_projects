import 'package:flutter/material.dart';
import 'BankAccount/BankAccount.dart';
import 'Expenses/Expenses.dart';
import 'HomePage.dart';
import 'intro/PortFolio/PortFolio.dart';
import 'intro/Profiles/More.dart';
import 'main.dart';


class BottomNavBarPage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return BottomNavBarPageState();
  }

}

class BottomNavBarPageState extends State<BottomNavBarPage> {
  int selectedindex=0;
  void navigate(int index){
    setState(() {
      selectedindex=index;
    });
  }
  final List<Widget> pages=[
    HomePage(),
    Expenses(),
    PortFolio(),
    BankAccount(),
    More()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:pages[selectedindex],

      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.blue,
        currentIndex:selectedindex,
        type: BottomNavigationBarType.fixed,
        onTap: navigate,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home_sharp),label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.track_changes_outlined),label: 'Expenses'),
          BottomNavigationBarItem(icon: Icon(Icons.attach_money_outlined),label: 'Portfolio'),
          BottomNavigationBarItem(icon: Icon(Icons.list_alt),label: 'Bank Account'),
          BottomNavigationBarItem(icon: Icon(Icons.more_horiz),label: 'More'),
        ],
      ),
    );
  }
}