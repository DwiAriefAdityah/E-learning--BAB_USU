import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:datetime_picker_formfield/datetime_picker_formfield.dart';
import 'login.dart';

class Daftar extends StatefulWidget {
  @override
  _DaftarState createState() => _DaftarState();
}

class _DaftarState extends State<Daftar> {
  final format = DateFormat("yyyy-MM-dd");
  void regis() {}
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        // appBar: PreferredSize(
        //     preferredSize: Size.fromHeight(100.0), // here the desired height
        //     child: AppBar(
        //       flexibleSpace: Container(
        //         decoration: BoxDecoration(
        //             image: DecorationImage(
        //                 image: AssetImage("images/depan1.png"),
        //                 fit: BoxFit.fitHeight)),
        //       ),
        //     )),
        body: Container(
          padding: EdgeInsets.all(30),
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("images/depan.jpg"), fit: BoxFit.cover)),
          child: ListView(
            children: <Widget>[
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.only(top: 170),
                    child: Text(
                      "Daftar",
                      style: TextStyle(
                          fontSize: 40.0,
                          fontWeight: FontWeight.w800,
                          fontFamily: 'Calibri',
                          color: const Color(0xFF34813d)),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 20),
                    child: TextFormField(
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.only(top:0),
                        labelText: 'Nama',
                        labelStyle: TextStyle(
                            color: Colors.black45,
                            fontStyle: FontStyle.italic,
                            fontSize: 20),
                        hintText: "Masukkan Nama",
                        enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.grey),
                        ),
                        focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                                color: const Color(0xFF34813d), width: 2.0)),
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 20),
                    child: Column(
                      children: <Widget>[
                        DateTimeField(
                          decoration: InputDecoration(
                            contentPadding: EdgeInsets.only(top:0),
                        labelText: 'Tanggal Lahir',
                        labelStyle: TextStyle(
                            color: Colors.black45,
                            fontStyle: FontStyle.italic,
                            fontSize: 20),
                        hintText: "Tanggal Lahir",
                        enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.grey),
                        ),
                        focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                              color: const Color(0xFF34813d), width: 2.0),
                        ),
                      ),
                          format: format,
                          onShowPicker: (context, currentValue) {
                            return showDatePicker(
                                context: context,
                                firstDate: DateTime(1900),
                                initialDate: currentValue ?? DateTime.now(),
                                lastDate: DateTime(2100));
                          },
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 20),
                    child: TextFormField(
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.only(top:0),
                        labelText: 'Email',
                        labelStyle: TextStyle(
                            color: Colors.black45,
                            fontStyle: FontStyle.italic,
                            fontSize: 20),
                        hintText: "Masukkan Email",
                        enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.grey),
                        ),
                        focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                              color: const Color(0xFF34813d), width: 2.0),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 20),
                    child: TextFormField(
                      obscureText: true,
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.only(top:0),
                        labelText: 'Password',
                        labelStyle: TextStyle(
                            color: Colors.black45,
                            fontStyle: FontStyle.italic,
                            fontSize: 20),
                        hintText: "Masukkan Password",
                        enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.grey),
                        ),
                        focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                              color: const Color(0xFF34813d), width: 2.0),
                        ),
                      ),
                    ),
                  ),
                  Container(
                      margin: EdgeInsets.only(top: 40),
                      decoration: new BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black26,
                            blurRadius:
                                10.0, // has the effect of softening the shadow
                            spreadRadius:
                                1.0, // has the effect of extending the shadow
                            // offset: Offset(
                            //   10.0, // horizontal, move right 10
                            //   10.0, // vertical, move down 10
                            // ),
                          )
                        ],
                      ),
                      child: RaisedButton(
                        child: Text("Daftar",
                            style: TextStyle(
                              color: Colors.white,
                              fontFamily: "Calibri",
                              fontSize: 18.0,
                              fontWeight: FontWeight.w800,
                            )),
                        onPressed: regis,
                        color: const Color(0xFF34813d),
                        padding: EdgeInsets.fromLTRB(30, 20, 30, 20),
                        shape: RoundedRectangleBorder(
                          borderRadius: new BorderRadius.circular(20.0),
                        ),
                      )),
                  Container(
                      margin: EdgeInsets.only(top: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text(
                            "Sudah Punya Akun? ",
                            style: TextStyle(
                                fontSize: 18,
                                fontFamily: 'Calibri',
                                color: Colors.black45),
                          ),
                          GestureDetector(
                              child: Text("Login!",
                                  style: TextStyle(
                                      decoration: TextDecoration.underline,
                                      fontSize: 18,
                                      fontFamily: 'Calibri',
                                      color: const Color(0xFF34813d),
                                      fontWeight: FontWeight.w800)),
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => Login()),
                                );
                              }),
                        ],
                      )),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
