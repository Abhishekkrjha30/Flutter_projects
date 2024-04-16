import 'dart:async';

import 'package:flutter/material.dart';
import 'package:home_service_project/EmployeeOrCustomers.dart';
import 'package:home_service_project/SplashWelcomeLoginSignUp/SignUp.dart';
import 'package:home_service_project/SplashWelcomeLoginSignUp/WelcomePage.dart';
import 'package:home_service_project/main.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 3), () {
      Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context)=>EmployeeOrCustomers()));
    });
  }
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              height: 100,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                image: DecorationImage(
                  image: NetworkImage(
                    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRmf5wMpXQETBNX7sD1Zz778aBPgYB5gt_Uhg&usqp=CAU',
                  )
                )
              ),
            ),
          ],
        ),
      ),
    );
  }
}



