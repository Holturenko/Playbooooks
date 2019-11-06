import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:playmarket_books/home_page.dart';
import 'package:playmarket_books/library_page.dart';
import 'package:playmarket_books/playmarket_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int _selectedPage = 0;
  var _pageOptions = [
    HomePage(),
    LibraryPage(),
    PlayMarket(),
  ];

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
        DeviceOrientation.portraitUp,
        DeviceOrientation.portraitDown,
      ]);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: _pageOptions[_selectedPage],
        bottomNavigationBar: BottomNavigationBar(
          
            currentIndex: _selectedPage,
            onTap: (int index) {
              setState(() {
                _selectedPage = index;
              });
            },
            items: [
              BottomNavigationBarItem(
                icon: Icon(Icons.home),
                title: Text('Главная'),
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.library_books),
                title: Text('Библиотека'),
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.store),
                title: Text('Play Маркет'),
              ),
            ]),
      )
    );
  }
}