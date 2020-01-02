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
    return Container(
      padding: EdgeInsets.fromLTRB(20.0, 20.0, 20.0, 10.0),
      child: ListView(
        children: <Widget>[
          Container(
            child: Text(
              "Profil",
              style: TextStyle(
                  fontSize: 30.0,
                  fontWeight: FontWeight.w800,
                  fontFamily: 'Calibri',
                  color: Colors.black54),
            ),
          ),
          Container(
            child: Column(
              children: <Widget>[
                Card(
                  shape: Border(
                      bottom: BorderSide(color: Colors.black26, width: 0.5)),
                  elevation: 0.0,
                  color: Colors.transparent,
                  child: ListTile(
                    contentPadding: EdgeInsets.symmetric(vertical: 10),
                    title: Container(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            "Nama:",
                            style: TextStyle(
                              fontSize: 18.0,
                              fontFamily: 'Aller',
                              // fontWeight: FontWeight.w800,
                              color: Colors.black,
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.all(3),
                          ),
                          Text(
                            "Fachry Muhamad Anantama Tarigan",
                            style: TextStyle(
                              fontSize: 20.0,
                              fontFamily: 'Aller',
                              // fontWeight: FontWeight.w800,
                              color: const Color(0xFF34813d),
                            ),
                          ),
                        ],
                      ),
                    ),
                    subtitle: Text(
                      "Mahasiswa",
                      style: TextStyle(
                        fontSize: 18.0,
                        fontFamily: 'Aller',
                        // fontWeight: FontWeight.w800,
                        color: const Color(0xFFd8b103),
                      ),
                    ),
                  ),
                ),
                Card(
                  shape: Border(
                      bottom: BorderSide(color: Colors.black26, width: 0.5)),
                  elevation: 0.0,
                  color: Colors.transparent,
                  child: ListTile(
                    contentPadding: EdgeInsets.symmetric(vertical: 10),
                    title: Container(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            "Email:",
                            style: TextStyle(
                              fontSize: 18.0,
                              fontFamily: 'Aller',
                              // fontWeight: FontWeight.w800,
                              color: Colors.black,
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.all(3),
                          ),
                          Text(
                            "fachry.tarigan@gmail.com",
                            style: TextStyle(
                              fontSize: 20.0,
                              fontFamily: 'Aller',
                              // fontWeight: FontWeight.w800,
                              color: const Color(0xFF34813d),
                            ),
                          ),
                        ],
                      ),
                    ),
                    // subtitle: Text(
                    //   "Mahasiswa",
                    //   style: TextStyle(
                    //     fontSize: 18.0,
                    //     fontFamily: 'Aller',
                    //     // fontWeight: FontWeight.w800,
                    //     color: Colors.black54,
                    //   ),
                    // ),
                  ),
                ),
                Card(
                  shape: Border(
                      bottom: BorderSide(color: Colors.black26, width: 0.5)),
                  elevation: 0.0,
                  color: Colors.transparent,
                  child: ListTile(
                    contentPadding: EdgeInsets.symmetric(vertical: 10),
                    title: Container(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            "Jenis Kelamin:",
                            style: TextStyle(
                              fontSize: 18.0,
                              fontFamily: 'Aller',
                              // fontWeight: FontWeight.w800,
                              color: Colors.black,
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.all(3),
                          ),
                          Text(
                            "Laki-Laki",
                            style: TextStyle(
                              fontSize: 20.0,
                              fontFamily: 'Aller',
                              // fontWeight: FontWeight.w800,
                              color: const Color(0xFF34813d),
                            ),
                          ),
                        ],
                      ),
                    ),
                    // subtitle: Text(
                    //   "Mahasiswa",
                    //   style: TextStyle(
                    //     fontSize: 18.0,
                    //     fontFamily: 'Aller',
                    //     // fontWeight: FontWeight.w800,
                    //     color: Colors.black54,
                    //   ),
                    // ),
                  ),
                ),
                Card(
                  shape: Border(
                      bottom: BorderSide(color: Colors.black26, width: 0.5)),
                  elevation: 0.0,
                  color: Colors.transparent,
                  child: ListTile(
                    contentPadding: EdgeInsets.symmetric(vertical: 10),
                    title: Container(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            "Tanggal Lahir:",
                            style: TextStyle(
                              fontSize: 18.0,
                              fontFamily: 'Aller',
                              // fontWeight: FontWeight.w800,
                              color: Colors.black,
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.all(3),
                          ),
                          Text(
                            "11-08-1998",
                            style: TextStyle(
                              fontSize: 20.0,
                              fontFamily: 'Aller',
                              // fontWeight: FontWeight.w800,
                              color: const Color(0xFF34813d),
                            ),
                          ),
                        ],
                      ),
                    ),
                    // subtitle: Text(
                    //   "Mahasiswa",
                    //   style: TextStyle(
                    //     fontSize: 18.0,
                    //     fontFamily: 'Aller',
                    //     // fontWeight: FontWeight.w800,
                    //     color: Colors.black54,
                    //   ),
                    // ),
                  ),
                ),
                Container(
                    margin: EdgeInsets.only(top: 10),
                    child: RaisedButton(
                      elevation: 5,
                      child: Text(
                        "Keluar",
                        style: TextStyle(
                          color: Colors.white,
                          fontFamily: "Calibri",
                          fontSize: 18.0,
                          fontWeight: FontWeight.w800,
                        ),
                      ),
                      color: const Color(0xFF34813d),
                      padding: EdgeInsets.fromLTRB(20, 18, 20, 18),
                      shape: RoundedRectangleBorder(
                        borderRadius: new BorderRadius.circular(20.0),
                      ),
                      onPressed: () {
                        AuthProvider().logOut();
                      },
                    )),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
