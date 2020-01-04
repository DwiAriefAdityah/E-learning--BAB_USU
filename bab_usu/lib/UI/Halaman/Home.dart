import 'package:bab_usu/UI/Halaman/akun.dart';
import 'package:bab_usu/UI/Halaman/beranda.dart';
import 'package:bab_usu/UI/Halaman/cari.dart';
import 'package:bab_usu/UI/Halaman/listbaca.dart';
import 'package:flutter/material.dart';

void main() => runApp(Home());

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final _xAppBar = AssetImage("images/maju.png");
  int _selectedTabIndex = 0;
  void _onNavBarTapped(int index) {
    setState(() {
      _selectedTabIndex = index;
    });
  }

  final _listpage = <Widget>[
    Beranda(),
    ListBaca(),
    Cari(),
    Akun(),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: PreferredSize(
            preferredSize: Size.fromHeight(90.0), // here the desired height
            child: AppBar(
              flexibleSpace: Container(
                decoration: BoxDecoration(
                    image: DecorationImage(
                  image: _xAppBar,
                  fit: BoxFit.fitHeight,
                )),
              ),
              backgroundColor: const Color(0xFF34813d),
              elevation: 1.0,
            )),
        body: Container(
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("images/back.jpg"), fit: BoxFit.cover)),
          child: _listpage[_selectedTabIndex],
        ),
        bottomNavigationBar: BottomNavigationBar(
          elevation: 70,
          type: BottomNavigationBarType.fixed,
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              backgroundColor: Colors.green,
              icon: Icon(Icons.home),
              title: Text('Beranda'),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.list),
              title: Text('List Baca'),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.search),
              title: Text('Cari'),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              title: Text('Akun'),
            )
          ],
          iconSize: 40,
          currentIndex: _selectedTabIndex,
          selectedItemColor: const Color(0xFF34813d),
          unselectedItemColor: Colors.black38,
          selectedFontSize: 12,
          unselectedFontSize: 12,
          selectedLabelStyle: TextStyle(fontWeight: FontWeight.w800),
          onTap: _onNavBarTapped,
        ),
      ),
    );
  }
}
