import 'package:flutter/material.dart';

void main() => runApp(Akun());

class Akun extends StatefulWidget {
  @override
  _AkunState createState() => _AkunState();
}

class _AkunState extends State<Akun> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20.0),
      child: new Center(
        child: new Text("Akun"),
      ),
    );
  }
}