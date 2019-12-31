import 'package:flutter/material.dart';

void main() => runApp(Cari());
class Cari extends StatefulWidget {
  @override
  _CariState createState() => _CariState();
}

class _CariState extends State<Cari> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20.0),
      child: new Center(
        child: new Text("Cari"),
      ),
    );
  }
}