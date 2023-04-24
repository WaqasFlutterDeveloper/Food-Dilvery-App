import 'package:flutter/material.dart';

class AppRoutes {
  static void replace(context, function) {
    Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (context) => function));
  }

  static void push(context, function) {
    Navigator.push(context, MaterialPageRoute(builder: (context) => function));
  }

  static void closeAllScreensAndNavigate(context, function) {
    Navigator.popUntil(context, (route) => false);
    Navigator.push(context, MaterialPageRoute(builder: (context) => function));
  }

  static void closeAllScreens(context) {
    Navigator.popUntil(context, (route) => false);

    Navigator.pop(context);
  }
}