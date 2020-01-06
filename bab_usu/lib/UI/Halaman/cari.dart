import 'package:flutter/material.dart';
import 'package:firebase_storage/firebase_storage.dart';

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
          child: RaisedButton(
            child: Text("Tekan"),
            onPressed: ()async{
              Data().getData();
            }
          )
      ),
    );
  }
}

class Data {
  Future<void> getData() async{
    var storage = FirebaseStorage.instance.ref().child('fakultas/fasilkom-TI/Teknologi Informasi/Semester 7/Mobile/Slide 1 - Introduction to Android.pdf');
    // var folder = storage.child('selfies');
    // var file = 'me2.jpeg';
    // var spaceRef = folder.child(file);

    var path = await storage.getDownloadURL();
    // var lokData =  storage.ref().child('Slide 1 - Introduction to Android.pdf').toString();
    // var url = await lokData.getDownloadURL();
    
    print(path);
  }

  
}