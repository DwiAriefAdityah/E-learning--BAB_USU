import 'package:bab_usu/utils/firebase_auth.dart';
import 'package:flutter/material.dart';

void main() => runApp(Akun());

class Akun extends StatefulWidget {
  @override
  _AkunState createState() => _AkunState();
}

class _AkunState extends State<Akun> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text("Akun Page"),
            RaisedButton(
              child: Text("Log Out"),
              onPressed: (){
                AuthProvider().logOut();
              },
            )
          ],
        ),
      ),

    );
  }
}