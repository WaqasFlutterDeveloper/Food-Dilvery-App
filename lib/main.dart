import 'package:flutter/material.dart';

import 'Screens/Auth_Section/logIn_page.dart';
import 'Screens/Auth_Section/signUp_page.dart';
import 'Screens/Orders_Section/DetailProduct.dart';
import 'Screens/Orders_Section/ExploreMenu.dart';
import 'Screens/Orders_Section/ExploreRestaurant.dart';
import 'Screens/Orders_Section/Filter_Page.dart';
import 'Screens/Orders_Section/Message_List.dart';
import 'Screens/Orders_Section/chatting_page.dart';
import 'Screens/Orders_Section/home_page.dart';
import 'Screens/Orders_Section/home_section.dart';
import 'Screens/Orders_Section/set_location.dart';
import 'Screens/Orders_Section/track_order.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // home: ChattingScreen(),
      // home: ChatScreen(),
      home: ProductItemScreen(),
      // home: HomeScreen(),
    );
  }
}
