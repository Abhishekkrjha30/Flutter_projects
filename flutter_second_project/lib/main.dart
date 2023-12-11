import 'package:flutter/material.dart';
import 'package:second_project/Explore.dart';
import 'package:second_project/Home.dart';
import 'package:second_project/LogIn.dart';
import 'package:second_project/ProductDetails.dart';
import 'package:second_project/SignUp.dart';
import 'package:second_project/welcome.dart';

/// Flutter code sample for [NavigationBar].

void main() => runApp(const NavigationBarApp());

class NavigationBarApp extends StatelessWidget {
  const NavigationBarApp({super.key});

  @override
  Widget build(BuildContext context) {

    return  MaterialApp(home: NavigationExample(),
        debugShowCheckedModeBanner: false,
    );
  }
}

class NavigationExample extends StatefulWidget {

  const NavigationExample({super.key});
  @override
  State<NavigationExample> createState() => _NavigationExampleState();
}

class _NavigationExampleState extends State<NavigationExample> {
  int currentPageIndex = 0;

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      bottomNavigationBar: NavigationBar(
        onDestinationSelected: (int index) {
          setState(() {
            currentPageIndex = index;
          });
        },
        indicatorColor: Colors.cyan,
        selectedIndex: currentPageIndex,
        destinations: const <Widget>[
          NavigationDestination(
            //selectedIcon: Icon(Icons.handshake_outlined),
            icon: Icon(Icons.handshake_outlined),
            label: 'Welcome',
          ),
          NavigationDestination(
            selectedIcon: Icon(Icons.home),
            icon: Icon(Icons.home_outlined),
            label: 'Home',
          ),
          NavigationDestination(
           selectedIcon:Icon(Icons.contact_mail_outlined),
            icon: Icon(Icons.login_rounded),
            label: 'SignUp',
          ),
          NavigationDestination(
            selectedIcon: Icon(Icons.login_rounded),
            icon: Icon(Icons.login_rounded),
            label: 'LogIn',
          ),
          NavigationDestination(
            selectedIcon: Icon(Icons.details_rounded),
            icon: Icon(Icons.details_rounded),
            label: 'ProductDetails',
          ),
          NavigationDestination(
            selectedIcon: Icon(Icons.explore_rounded),
            icon: Icon(Icons.explore_rounded),
            label: 'Explore',
          ),
        ],
      ),
      body: <Widget>[
        Welcome(),
        Home(),
        LogIn(),
        SignUp(),
        ProductDetails(),
        Explore(),
      ][currentPageIndex],
    );
  }
}


