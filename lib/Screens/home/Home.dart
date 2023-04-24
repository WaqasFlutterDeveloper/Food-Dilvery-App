import 'package:flutter/material.dart';

import '../auth/Profile_Page.dart';
import '../message/Message_List.dart';
import '../message/chatting_page.dart';
import 'package:flutter/material.dart';

import '../order/Order_Details.dart';
import '../order/Your_Orders.dart';
import '../order/track_order.dart';
import 'Home_Page.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  int _selectedTab = 0;

  List _pages = [
    HomeScreen(),
    ProfileScreen(),
    OrderDetailsScreen(),
    MessageListScreen(),
    TrackOrder(),
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
          BottomNavigationBarItem(
              icon: Icon(Icons.location_on_outlined), label: "Location"),
        ],
      ),
      body: _pages[_selectedTab],
    );
  }
}
