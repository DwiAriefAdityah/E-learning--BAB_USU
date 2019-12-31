import 'package:bab_usu/UI/Login/Home.dart';
import 'package:flutter/material.dart';


void main() => runApp(Rumah());

class Rumah extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My Flutter App',
      home: Home(),
    );
  }
}
