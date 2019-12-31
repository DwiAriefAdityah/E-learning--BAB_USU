import 'package:flutter/material.dart';

void main() => runApp(Beranda());

class Beranda extends StatefulWidget {
  @override
  _BerandaState createState() => _BerandaState();
}

class _BerandaState extends State<Beranda> {
  List<String> _daftarProdi = [
    'Ilmu Komputer',
    'Teknologi Informasi',
  ];
  String _prodiTerpilih;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(20.0, 30.0, 20.0, 50.0),
      child: Column(
        children: <Widget>[
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Text(
                  "Fakultas",
                  style: TextStyle(
                      fontSize: 22.0,
                      fontFamily: 'Futura',
                      color: const Color(0xFF34813d)),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.all(5),
          ),
          Container(
            child: Column(
              children: <Widget>[
                Card(
                  elevation: 3,
                  child: Container(
                    width: MediaQuery.of(context).size.width * 1,
                    padding: EdgeInsets.only(left: 20, right: 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        DropdownButton(
                          icon: null,
                          underline: Container(height: 0),
                          hint: Text(
                            '-Daftar Fakultas-',
                            textAlign: TextAlign.left,
                          ), // Not necessary for Option 1
                          value: _prodiTerpilih,
                          elevation: 1,
                          onChanged: (newValue) {
                            setState(() {
                              _prodiTerpilih = newValue;
                            });
                          },
                          items: _daftarProdi.map((prodi) {
                            return DropdownMenuItem(
                              child: Container(
                                width: MediaQuery.of(context).size.width * 0.75,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: <Widget>[
                                    Text(prodi),
                                  ],
                                ),
                              ),
                              value: prodi,
                            );
                          }).toList(),
                        ),
                        // const ListTile(
                        //   leading: Icon(Icons.album, size: 50),
                        //   title: Text('Heart Shaker'),
                        //   subtitle: Text('TWICE'),
                        // ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.all(10),
          ),
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Text(
                  "Program Studi",
                  style: TextStyle(
                      fontSize: 22.0,
                      fontFamily: 'Futura',
                      color: const Color(0xFF34813d)),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.all(5),
          ),
          Container(
            child: Column(
              children: <Widget>[
                Card(
                  elevation: 3,
                  child: Container(
                    width: MediaQuery.of(context).size.width * 1,
                    padding: EdgeInsets.only(left: 20, right: 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        DropdownButton(
                          icon: null,
                          underline: Container(height: 0),
                          hint: Text(
                            '-Daftar Program Studi-',
                            textAlign: TextAlign.left,
                          ), // Not necessary for Option 1
                          value: _prodiTerpilih,
                          elevation: 1,
                          onChanged: (newValue) {
                            setState(() {
                              _prodiTerpilih = newValue;
                            });
                          },
                          items: _daftarProdi.map((location) {
                            return DropdownMenuItem(
                              child: Container(
                                width: MediaQuery.of(context).size.width * 0.75,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: <Widget>[
                                    Text(location),
                                  ],
                                ),
                              ),
                              value: location,
                            );
                          }).toList(),
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.all(10),
          ),
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Text(
                  "Semester",
                  style: TextStyle(
                      fontSize: 22.0,
                      fontFamily: 'Futura',
                      color: const Color(0xFF34813d)),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.all(5),
          ),
          Container(
            child: Column(
              children: <Widget>[
                Card(
                  elevation: 3,
                  child: Container(
                    width: MediaQuery.of(context).size.width * 1,
                    padding: EdgeInsets.only(left: 20, right: 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        DropdownButton(
                          icon: null,
                          underline: Container(height: 0),
                          hint: Text(
                            '-Daftar Semester-',
                            textAlign: TextAlign.left,
                          ), // Not necessary for Option 1
                          value: _prodiTerpilih,
                          elevation: 1,
                          onChanged: (newValue) {
                            setState(() {
                              _prodiTerpilih = newValue;
                            });
                          },
                          items: _daftarProdi.map((location) {
                            return DropdownMenuItem(
                              child: Container(
                                width: MediaQuery.of(context).size.width * 0.75,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: <Widget>[
                                    Text(location),
                                  ],
                                ),
                              ),
                              value: location,
                            );
                          }).toList(),
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
           Padding(
            padding: EdgeInsets.all(10),
          ),
          Container(
              child: RaisedButton(
            elevation: 4,
            child: Text("Submit",
                style: TextStyle(
                  color: Colors.white,
                  fontFamily: "Calibri",
                  fontSize: 18.0,
                  fontWeight: FontWeight.w800,
                )),
            onPressed: () {},
            color: const Color(0xFF34813d),
            padding: EdgeInsets.fromLTRB(25, 20, 25, 20),
            shape: RoundedRectangleBorder(
              borderRadius: new BorderRadius.circular(20.0),
            ),
          )),
        ],
      ),
    );
  }
}
