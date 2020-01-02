import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:datetime_picker_formfield/datetime_picker_formfield.dart';
import 'login.dart';

enum SingingCharacter { lakilaki, perempuan }

class Daftar extends StatefulWidget {
  @override
  _DaftarState createState() => _DaftarState();
}

class _DaftarState extends State<Daftar> {
  SingingCharacter _character = SingingCharacter.lakilaki;
  final format = DateFormat("yyyy-MM-dd");
  void regis() {}
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          padding: EdgeInsets.symmetric(horizontal: 30),
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
                    margin: EdgeInsets.only(top: 15),
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
                    margin: EdgeInsets.only(top: 15),
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
                    margin: EdgeInsets.only(top: 15),
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
                                        padding: EdgeInsets.symmetric(vertical: 15),
                    decoration: BoxDecoration(
                      border: Border(
                        bottom: BorderSide(
                          color: Colors.grey,
                        ),
                      ),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          "Jenis Kelamin",
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.grey,
                            fontStyle: FontStyle.italic,
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 10),
                          child: Row(
                            children: <Widget>[
                              Container(
                                child: Row(
                                  children: <Widget>[
                                    Radio(
                                      focusColor: Colors.grey,
                                      activeColor: const Color(0xFF34813d),
                                      value: SingingCharacter.lakilaki,
                                      groupValue: _character,
                                      onChanged: (SingingCharacter value) {
                                        setState(() {
                                          _character = value;
                                        });
                                      },
                                    ),
                                    Text(
                                      'Laki-Laki',
                                      style: TextStyle(
                                        fontSize: 18,
                                        color: Colors.black54,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(
                                width: 15,
                              ),
                              Container(
                                child: Row(
                                  children: <Widget>[
                                    Radio(
                                      focusColor: Colors.grey,
                                      activeColor: const Color(0xFF34813d),
                                      value: SingingCharacter.perempuan,
                                      groupValue: _character,
                                      onChanged: (SingingCharacter value) {
                                        setState(() {
                                          _character = value;
                                        });
                                      },
                                    ),
                                    Text(
                                      'Perempuan',
                                      style: TextStyle(
                                        fontSize: 18,
                                        color: Colors.black54,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
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
                  margin: EdgeInsets.only(top: 20),   
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
