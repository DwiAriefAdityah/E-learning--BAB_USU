import 'package:bab_usu/UI/Halaman/rumah.dart';
import 'package:bab_usu/UI/Login/login.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MainScreen(),
    );
  }
}

class MainScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
      stream: FirebaseAuth.instance.onAuthStateChanged,
      builder: (context, AsyncSnapshot<FirebaseUser> snapshot){
        // if(snapshot.connectionState == ConnectionState.waiting)
        //   return SplashPage();
        if(!snapshot.hasData || snapshot.data == null)
          return Login();
        else{
          return Rumah();
        }
      },
    );
  }
}