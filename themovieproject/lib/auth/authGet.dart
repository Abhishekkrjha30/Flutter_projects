import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:themovieproject/Movies/HomePage.dart';
import 'package:themovieproject/SignIn.dart';

class AuthGet extends StatelessWidget {
  const AuthGet({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StreamBuilder(
        stream: FirebaseAuth.instance.authStateChanges(),
        builder: (context,snapShot){
          if(snapShot.hasData){
            return  HomePage();
          }
          else{
            return SignIn();
          }
        }
      ),
    );
  }
}
