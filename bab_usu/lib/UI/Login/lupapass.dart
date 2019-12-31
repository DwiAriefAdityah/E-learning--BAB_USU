import 'package:flutter/material.dart';
import 'login.dart';

class Lupapass extends StatefulWidget {
  @override
  _LupapassState createState() => _LupapassState();
}

class _LupapassState extends State<Lupapass> {
  void tekantombol() {}
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
          padding: EdgeInsets.all(40),
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("images/depan.jpg"), fit: BoxFit.cover)),
          child: ListView(
            children: <Widget>[
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.only(top: 200),
                    child: Text(
                      "Lupa Password",
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
                        contentPadding: EdgeInsets.only(top: 0),
                        labelText: 'Email',
                        labelStyle: TextStyle(
                            color: Colors.black45,
                            fontStyle: FontStyle.italic,
                            fontSize: 20),
                        hintText: "Enter your email",
                        enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.grey),
                        ),
                        focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                                color: const Color(0xFF34813d), width: 2.0)),
                      ),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Container(
                        margin: EdgeInsets.only(top: 20),
                        child: Text(
                          "00:30",
                          style: TextStyle(
                              fontSize: 16,
                              fontFamily: 'Calibri',
                              color: Colors.black45),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 20),
                        child: Text(
                          "Kirim Ulang Email",
                          style: TextStyle(
                              fontSize: 16,
                              fontFamily: 'Calibri',
                              color: Colors.black45),
                        ),
                      ),
                    ],
                  ),
                  Container(
                      margin: EdgeInsets.only(top: 30),
                      decoration: new BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black26,
                            blurRadius:
                                20.0, // has the effect of softening the shadow
                            spreadRadius:
                                0.5, // has the effect of extending the shadow
                            // offset: Offset(
                            //   10.0, // horizontal, move right 10
                            //   10.0, // vertical, move down 10
                            // ),
                          )
                        ],
                      ),
                      child: RaisedButton(
                        child: Text("Kirim",
                            style: TextStyle(
                              color: Colors.white,
                              fontFamily: "Calibri",
                              fontSize: 18.0,
                              fontWeight: FontWeight.w800,
                            )),
                        onPressed: tekantombol,
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
                            "Kembali ",
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
