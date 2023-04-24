import 'package:flutter/material.dart';
import 'Screens/auth/Splash_Screen.dart';
import 'Screens/auth/logIn_page.dart';
import 'Screens/home/Home.dart';
import 'Screens/home/Home_Page.dart';

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
      home: SplashScreen(),
      // home: HomePage(),
    );
  }
}


// initialRoute: WelcomeScreen.id,
// // initialRoute: Std.id,
// // initialRoute: ChooiseNearestBus.id,
// routes: {
// // Std.id : (context) => Std(),
// WelcomeScreen.id : (context) => WelcomeScreen(),
// AccountType.id : (context) => AccountType(),
// AdminSignUp.id : (context) => AdminSignUp(),
// DriverSignUp.id : (context) => DriverSignUp(),
// StudentSignUp.id : (context) => StudentSignUp(),
// AdminPage.id : (context) => AdminPage(),
// DriverPage.id : (context) => DriverPage(),
// StudentPage.id : (context) => StudentPage(),
// ForgetPasswordPage.id : (context) => ForgetPasswordPage(),
// StudentViewLocationPage.id : (context) => StudentViewLocationPage(),
// // TestMood.id : (context) => TestMood(),
// FireMape.id : (context) => FireMape(),
// Try.id : (context) => Try(),
//
//
// },