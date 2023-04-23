import 'package:flutter/material.dart';

import '../Bottom_Navigation_Bar/mypage.dart';
import 'chatting_page.dart';
import 'package:flutter/material.dart';

import 'home_section.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  int _selectedTab = 0;

  List _pages = [
    HomeScreen(),
    HomeScreen(),
    HomeScreen(),
    HomeScreen(),
  ];

  _changeTab(int index) {
    setState(() {
      _selectedTab = index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        showSelectedLabels: false,
        showUnselectedLabels: false,
        currentIndex: _selectedTab,
        onTap: (index){
          setState(() {
            _selectedTab = index;
          });
        },
        selectedItemColor: Color(0xFF006533),
        unselectedItemColor: Color(0xFF9BDABC),
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "About"),
          BottomNavigationBarItem(
              icon: Icon(Icons.shopping_cart), label: "Product"),
          BottomNavigationBarItem(
              icon: Icon(Icons.message), label: "Contact"),
        ],
      ),
      body: _pages[_selectedTab],
    );
  }
}
