import 'package:flutter/material.dart';
import 'package:home_service_project/ContactPage.dart';
import 'package:home_service_project/Home/HomePage.dart';
import 'package:home_service_project/ProfilePage/ProfilePage.dart';
import 'package:home_service_project/main.dart';

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
    ProfilePage(),
    ContactUs(),

  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:pages[selectedindex],

      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.blue.shade900,

        currentIndex:selectedindex,
        type: BottomNavigationBarType.fixed,
        onTap: navigate,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home_sharp,size: 35,),label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.person,size: 35,),label: 'Profile'),
          BottomNavigationBarItem(icon: Icon(Icons.phone,size: 35,),label: 'Contact Us'),
        ],
      ),
    );
  }
}