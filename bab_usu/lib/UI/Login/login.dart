import 'package:bab_usu/utils/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'Daftar.dart';
import 'lupapass.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  TextEditingController _emailController;
  TextEditingController _passwordController;

  @override
  void initState() {
    super.initState();
    _emailController = TextEditingController(text: "");
    _passwordController = TextEditingController(text: "");
  }

  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Container(
          padding: EdgeInsets.fromLTRB(40, 20, 40, 20),
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("images/depan.jpg"), fit: BoxFit.cover)),
          child: ListView(
            children: <Widget>[
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.only(top: 180),
                    child: Text(
                      "Login",
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
                      controller: _emailController,
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
                  Container(
                    margin: EdgeInsets.only(top: 20),
                    child: TextFormField(
                      controller: _passwordController,
                      obscureText: true,
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.only(top: 0),
                        labelText: 'Password',
                        labelStyle: TextStyle(
                            color: Colors.black45,
                            fontStyle: FontStyle.italic,
                            fontSize: 20),
                        hintText: "Enter your Password",
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
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: <Widget>[
                      Container(
                        margin: EdgeInsets.only(top: 20),
                        child: GestureDetector(
                            child: Text("Lupa password?",
                                style: TextStyle(
                                    fontSize: 18,
                                    fontFamily: 'Calibri',
                                    color: Colors.black45)),
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Lupapass()),
                              );
                            }),
                      ),
                    ],
                  ),
                  Container(
                      margin: EdgeInsets.only(top: 30),
                      decoration: new BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black26,
                            blurRadius: 20.0,
                            spreadRadius: 1.0,
                          )
                        ],
                      ),
                      child: RaisedButton(
                        child: Text("Masuk",
                            style: TextStyle(
                              color: Colors.white,
                              fontFamily: "Calibri",
                              fontSize: 18.0,
                              fontWeight: FontWeight.w800,
                            )),
                        onPressed: () async {
                          if (_emailController.text.isEmpty ||
                              _passwordController.text.isEmpty) {
                            print("Email dan Password kosong");
                            return;
                          }

                          bool res = await AuthProvider().signInWithEmail(
                              _emailController.text, _passwordController.text);
                          if (!res) {
                            print("Login Failed");
                          } else {
                            print("Berhasil");
                          }
                        },
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
                            "Belum Punya Akun? ",
                            style: TextStyle(
                                fontSize: 18,
                                fontFamily: 'Calibri',
                                color: Colors.black45),
                          ),
                          GestureDetector(
                              child: Text("Daftar!",
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
                                      builder: (context) => Daftar()),
                                );
                              })
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
