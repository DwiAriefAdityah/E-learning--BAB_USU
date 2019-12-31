import 'package:flutter/material.dart';

void main() => runApp(ListBaca());

class ListBaca extends StatefulWidget {
  @override
  _ListBacaState createState() => _ListBacaState();
}

class _ListBacaState extends State<ListBaca> {
  List _matkulSem5 = [
    "Perilaku Organisasi",
    "Arsitektur Data",
    "Desain Interaksi",
    "Jaminan dan Keamanan Informasi",
    "Sistem Administrasi Server",
    "Kecerdasan Buatan",
    "Praktikum Desain Interaksi",
    "Praktikum Arsitektur Data",
  ];

  List _jumlahSlide = [
    "40 Slide",
    "72 Slide",
    "40 Slide",
    "24 Slide",
    "40 Slide",
    "87 Slide",
    "22 Slide",
    "19 Slide",
  ];

  List _formatFile = [
    "PDF",
    "PPT",
    "PDF",
    "PPT",
    "PDF",
    "PPT",
    "PDF",
    "PPT",
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 20, right: 20),
      child: Column(
        children: <Widget>[
          Container(
            margin: EdgeInsets.only(top: 20.0),
            color: Colors.transparent,
            child: Column(
              children: [
                Row(
                  children: <Widget>[
                    Container(
                      padding: EdgeInsets.fromLTRB(12, 5, 12, 5),
                      color: const Color(0xFFd8b103),
                      child: Text(
                        "Teknologi Informasi",
                        style: TextStyle(
                          fontSize: 22.0,
                          fontWeight: FontWeight.w800,
                          fontFamily: 'Calibri',
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ],
                ),
                Row(
                  children: <Widget>[
                    Container(
                      padding: EdgeInsets.fromLTRB(12, 5, 12, 5),
                      margin: EdgeInsets.only(top: 5, bottom: 10),
                      color: const Color(0xFF555555),
                      child: Text(
                        "Semester 5",
                        style: TextStyle(
                          fontSize: 22.0,
                          fontWeight: FontWeight.w800,
                          fontFamily: 'Calibri',
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: _matkulSem5.length,
              itemBuilder: (context, index) {
                return Card(
                  shape: Border(
                      bottom: BorderSide(color: Colors.black26, width: 0.5)),
                  elevation: 0.0,
                  color: Colors.transparent,
                  child: ListTile(
                    contentPadding: EdgeInsets.all(0),
                    title: Text(
                      _matkulSem5[index],
                      style: TextStyle(
                        fontSize: 18.0,
                        fontFamily: 'Aller',
                        // fontWeight: FontWeight.w800,
                        color: const Color(0xFF34813d),
                      ),
                    ),
                    subtitle: Container(
                      child: Row(
                        children: <Widget>[
                          Text(
                            _jumlahSlide[index],
                            style: TextStyle(
                              fontSize: 14.0,
                              fontFamily: 'Aller',
                              color: Colors.grey,
                            ),
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Text(
                            _formatFile[index],
                            style: TextStyle(
                              fontSize: 12.0,
                              fontFamily: 'Aller',
                              fontWeight: FontWeight.w800,
                              color: Colors.red,
                            ),
                          ),
                        ],
                      ),
                    ),
                    trailing: Icon(
                      Icons.more_vert,
                      size: 30,
                      color: Colors.black54,
                    ),
                  ),
                );
              },
            ),
          ),
          // children: <Widget>[

          //   Column(
          //     children: _matkulSem5.map((nama) {
          //       return Card(
          //         shape: Border(
          //             bottom: BorderSide(color: Colors.black54, width: 0.5)),
          //         elevation: 0.0,
          //         color: Colors.transparent,
          //         child: ListTile(
          //           contentPadding: EdgeInsets.all(0),
          //           title: Text(
          //             nama,
          //             style: TextStyle(
          //               fontSize: 18.0,
          //               fontFamily: 'Aller',
          //               // fontWeight: FontWeight.w800,
          //               color: const Color(0xFF34813d),
          //             ),
          //           ),
          //           subtitle: Text(
          //             '40 Slide',
          //             style: TextStyle(
          //               fontSize: 15.0,
          //               fontFamily: 'Aller',
          //             ),
          //           ),
          //           trailing: Icon(
          //             Icons.more_vert,
          //             size: 30,
          //             color: Colors.black54,
          //           ),
          //         ),
          //       );
          //     }).toList(),
          //     // children: _matkulSem5.map((matkul){

          //     // }).toList(),
          //     // children: [
          //     //   Card(
          //     //     shape: Border(
          //     //         bottom: BorderSide(color: Colors.black54, width: 0.5)),
          //     //     elevation: 0.0,
          //     //     color: Colors.transparent,
          //     //     child: ListTile(
          //     //       contentPadding: EdgeInsets.all(0),
          //     //       title: Text(
          //     //         'Perilaku Organisasi',
          //     //         style: TextStyle(
          //     //           fontSize: 20.0,
          //     //           fontFamily: 'Aller',
          //     //           // fontWeight: FontWeight.w800,
          //     //           color: const Color(0xFF34813d),
          //     //         ),
          //     //       ),
          //     //       subtitle: Text(
          //     //         '40 Slide',
          //     //         style: TextStyle(
          //     //           fontSize: 15.0,
          //     //           fontFamily: 'Aller',
          //     //         ),
          //     //       ),
          //     //       trailing: Icon(
          //     //         Icons.more_vert,
          //     //         size: 30,
          //     //         color: Colors.black54,
          //     //       ),
          //     //     ),
          //     //   ),
          //     //   Card(
          //     //     shape: Border(
          //     //         bottom: BorderSide(color: Colors.black54, width: 0.5)),
          //     //     elevation: 0.0,
          //     //     color: Colors.transparent,
          //     //     child: ListTile(
          //     //       contentPadding: EdgeInsets.all(0),
          //     //       title: Text(
          //     //         'Arsitektur Data',
          //     //         style: TextStyle(
          //     //           fontSize: 20.0,
          //     //           fontFamily: 'Aller',
          //     //           // fontWeight: FontWeight.w800,
          //     //           color: const Color(0xFF34813d),
          //     //         ),
          //     //       ),
          //     //       subtitle: Text(
          //     //         '72 Slide',
          //     //         style: TextStyle(
          //     //           fontSize: 15.0,
          //     //           fontFamily: 'Aller',
          //     //         ),
          //     //       ),
          //     //       trailing: Icon(
          //     //         Icons.more_vert,
          //     //         size: 30,
          //     //         color: Colors.black54,
          //     //       ),
          //     //     ),
          //     //   ),
          //     //   Card(
          //     //     shape: Border(
          //     //         bottom: BorderSide(color: Colors.black54, width: 0.5)),
          //     //     elevation: 0.0,
          //     //     color: Colors.transparent,
          //     //     child: ListTile(
          //     //       contentPadding: EdgeInsets.all(0),
          //     //       title: Text(
          //     //         'Arsitektur Data',
          //     //         style: TextStyle(
          //     //           fontSize: 20.0,
          //     //           fontFamily: 'Aller',
          //     //           // fontWeight: FontWeight.w800,
          //     //           color: const Color(0xFF34813d),
          //     //         ),
          //     //       ),
          //     //       subtitle: Text(
          //     //         '72 Slide',
          //     //         style: TextStyle(
          //     //           fontSize: 15.0,
          //     //           fontFamily: 'Aller',
          //     //         ),
          //     //       ),
          //     //       trailing: Icon(
          //     //         Icons.more_vert,
          //     //         size: 30,
          //     //         color: Colors.black54,
          //     //       ),
          //     //     ),
          //     //   ),
          //     // ],
          //   ),
          // ],
        ],
      ),
    );
  }
}
