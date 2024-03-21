import 'dart:html';

import 'package:flutter/material.dart';
import 'package:food_delivery/Cart/Cart.dart';
import 'package:food_delivery/Cart/CheckOut.dart';
import 'package:food_delivery/Cart/DeliveryAddress.dart';
import 'package:food_delivery/Cart/YourOrder.dart';
import 'package:food_delivery/Cuisines/Bouche.dart';
import 'package:food_delivery/Cuisines/Cuisines.dart';
import 'package:food_delivery/Cuisines/Dish.dart';
import 'package:food_delivery/MapPage.dart';
import 'package:food_delivery/Order/Orders.dart';
import 'package:food_delivery/ProfilePage/AccountDetails.dart';
import 'package:food_delivery/ProfilePage/ContactUsPage.dart';
import 'package:food_delivery/ProfilePage/ProfilePage.dart';
import 'package:food_delivery/ProfilePage/SettingsPage.dart';
import 'package:food_delivery/Provider/CartProvider.dart';
import 'package:food_delivery/Provider/ThemeChanger.dart';
import 'package:food_delivery/SearchBar/SearchBar.dart';
import 'package:food_delivery/SignUpLogIn/LogInWithPhone.dart';
import 'package:food_delivery/SignUpLogIn/SignUp.dart';
import 'package:food_delivery/SignUpLogIn/SignUpWithPhone.dart';
import 'package:food_delivery/SignUpLogIn/WelcomePage.dart';
import 'package:food_delivery/WelCome/IntroPage2.dart';
import 'package:food_delivery/WelCome/IntroPage3.dart';
import 'package:food_delivery/WelCome/IntroPage1.dart';
import 'package:food_delivery/WelCome/IntroPage4.dart';
import 'package:food_delivery/SignUpLogIn/SignIn.dart';
import 'package:food_delivery/WelCome/PageIndicator.dart';
import 'package:provider/provider.dart';

import 'DarkPage.dart';
import 'Home/Home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(providers: [
        ChangeNotifierProvider(create: (context)=>CartProvider()),
        ChangeNotifierProvider(create: (context)=>ThemeChanger()),
    ],
          child: Builder(builder: (BuildContext context){
             final themeChanger=Provider.of<ThemeChanger>(context);

            return MaterialApp(
              debugShowCheckedModeBanner:false,
              title: 'Flutter Demo',
              themeMode:themeChanger.themeMode ,
              theme: ThemeData(

                //colorScheme: ColorScheme.fromSeed( seedColor:Colors.deepPurple ),
                primaryColor: Colors.white,
                primarySwatch: Colors.cyan,
                textTheme: TextTheme(
                    bodyMedium: TextStyle(color: Colors.black,fontSize: 15),
                    titleMedium: TextStyle(color: Colors.green),
                 // bodyText1: TextStyle(fontSize: 18,color: Colors.black,fontWeight: FontWeight.bold),

                ),
                backgroundColor: Colors.grey.shade100,


                useMaterial3: true,
              ),
              darkTheme: ThemeData(
                brightness: Brightness.dark,
                primaryColor: Colors.black87,
                backgroundColor: Colors.black38,
                textTheme: TextTheme(
                  bodyMedium: TextStyle(color: Colors.white,fontSize: 15),
                  titleMedium: TextStyle(color: Colors.green),

                  //  bodyText1: TextStyle(fontSize: 18,color: Colors.white,fontWeight: FontWeight.bold),
                ),
                useMaterial3: true,

              ),
              home: Introduction(),
            );
          }),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        // TRY THIS: Try changing the color here to a specific color (to
        // Colors.amber, perhaps?) and trigger a hot reload to see the AppBar
        // change color while the other colors stay the same.
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: Column(
          // Column is also a layout widget. It takes a list of children and
          // arranges them vertically. By default, it sizes itself to fit its
          // children horizontally, and tries to be as tall as its parent.
          //
          // Column has various properties to control how it sizes itself and
          // how it positions its children. Here we use mainAxisAlignment to
          // center the children vertically; the main axis here is the vertical
          // axis because Columns are vertical (the cross axis would be
          // horizontal).
          //
          // TRY THIS: Invoke "debug painting" (choose the "Toggle Debug Paint"
          // action in the IDE, or press "p" in the console), to see the
          // wireframe for each widget.
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
