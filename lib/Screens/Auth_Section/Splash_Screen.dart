import 'dart:async';

import 'package:coucou_express/Screens/Auth_Section/logIn_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:flutter_svg/svg.dart';

import '../../Utils/appRoutes.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Timer(const Duration(seconds: 5), finish);
    super.initState();
  }
  void finish() async {
    AppRoutes.closeAllScreensAndNavigate(context, LoginScreen());
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
          child: Padding(
        padding: const EdgeInsets.only(top: 18.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Container(
            //   height: MediaQuery.of(context).size.height*2/6,
            //   width: double.infinity,
            //   decoration: BoxDecoration(
            //       gradient: LinearGradient(
            //         begin: Alignment.bottomLeft,
            //         end: Alignment.bottomRight,
            //         colors: <Color>[
            //           Colors.white,
            //           Colors.white
            //         ],
            //       ),
            //       image: DecorationImage(
            //           image: AssetImage('images/final.png',),
            //           fit: BoxFit.cover,
            //           opacity: .4/3
            //       ),
            //       color: Colors.white70
            //   ),
            // ),
            Container(
              height: 150,
              width: 250,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(
                        'images/logo2.png',
                      ),
                      fit: BoxFit.fill)),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 4, top: 15.0),
              child: Text(
                'Deliever Favorite Food',
                textAlign: TextAlign.left,
                style: TextStyle(
                    color: Color.fromRGBO(9, 5, 28, 1),
                    fontFamily: 'InterSemiBoldItalic',
                    fontSize: 13,
                    letterSpacing: 1,
                    fontWeight: FontWeight.normal,
                    height: 1),
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  height: 50,
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 28.0),
                  child: SpinKitFadingCube(
                    color: Color(0xFF006533),
                    size: 50.0,
                  ),
                ),
              ],
            ),
            // Figma Flutter Generator Ellipse10Widget - VECTOR
          ],
        ),
      )),
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
