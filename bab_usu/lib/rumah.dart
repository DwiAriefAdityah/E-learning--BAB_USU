import 'package:flutter/material.dart';
import 'Home.dart';

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
