import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:unki/pages/add_page.dart';
import 'package:unki/pages/home_page.dart';
//import 'package:unki/pages/person_page.dart';
import 'package:unki/pages/map_page.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int currentIndex = 0;
  final screens = [
    HomesPage(),
    AboutPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed, // padrão
        iconSize: 30,

        backgroundColor: Color(0xff54759E),
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.white60,
        currentIndex: currentIndex,
        onTap: (index) => setState(() => currentIndex = index),
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Person',
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(
          Icons.add,
          size: 30,
        ),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(22)),
        elevation: 0.1,
        backgroundColor: Colors.blue.shade400,
        onPressed: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => AddPage()));
        },
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
