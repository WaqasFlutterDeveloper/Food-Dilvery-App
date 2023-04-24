import 'package:flutter/material.dart';

class LocationScreen extends StatefulWidget {
  const LocationScreen({Key? key}) : super(key: key);

  @override
  State<LocationScreen> createState() => _LocationScreenState();
}

class _LocationScreenState extends State<LocationScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          bottomOpacity: 0.0,
          elevation: 0.0,
          toolbarHeight: 160,
          centerTitle: true,
          flexibleSpace: Container(
            height: 160,
            decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.bottomLeft,
                  end: Alignment.bottomRight,
                  colors: <Color>[Colors.white, Colors.white],
                ),
                image: DecorationImage(
                    image: AssetImage(
                      'images/final.png',
                    ),
                    fit: BoxFit.cover,
                    opacity: .1),
                color: Colors.white70),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(
                    left: 10,
                    top: 10,
                  ),
                  child: Row(
                    children: [
                      Container(
                        width: 45,
                        height: 45,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: Color.fromRGBO(249, 168, 77, 1),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(left: 10.0),
                          child: Icon(Icons.arrow_back_ios),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    left: 10.0,
                    top: 25,
                  ),
                  child: Row(
                    children: [
                      Container(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Set Your Location ',
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                    color: Color.fromRGBO(9, 4, 27, 1),
                                    fontFamily: 'BentonSansBold',
                                    fontSize: 25,
                                    letterSpacing:
                                    0 /*percentages not used in flutter. defaulting to zero*/,
                                    fontWeight: FontWeight.normal,
                                    height: 1.5 /*PERCENT not supported*/
                                ),
                              ),
                              Text(
                                'started',
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                    color: Color.fromRGBO(9, 4, 27, 1),
                                    fontFamily: 'BentonSansBold',
                                    fontSize: 25,
                                    letterSpacing:
                                    0 /*percentages not used in flutter. defaulting to zero*/,
                                    fontWeight: FontWeight.normal,
                                    height: 1.5 /*PERCENT not supported*/
                                ),
                              ),
                            ],
                          )),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 10, left: 15, right: 15),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(bottom: 15.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'This data will be displayed in your account',
                          textAlign: TextAlign.left,
                          style: TextStyle(
                              color: Color.fromRGBO(0, 0, 0, 1),
                              fontFamily: 'BentonSansBook',
                              fontSize: 12,
                              letterSpacing:
                              0 /*percentages not used in flutter. defaulting to zero*/,
                              fontWeight: FontWeight.normal,
                              height: 1.5 /*PERCENT not supported*/
                          ),
                        ),
                        Text(
                          'profile for security',
                          textAlign: TextAlign.left,
                          style: TextStyle(
                              color: Color.fromRGBO(0, 0, 0, 1),
                              fontFamily: 'BentonSansBook',
                              fontSize: 12,
                              letterSpacing:
                              0 /*percentages not used in flutter. defaulting to zero*/,
                              fontWeight: FontWeight.normal,
                              height: 1.5 /*PERCENT not supported*/
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 8.0,right: 8.0,bottom: 0.0,top: 20.0),
                    child: Container(
                      width: 335,
                      height: 147,
                      decoration: BoxDecoration(
                        // color: Colors.white,
                        borderRadius: BorderRadius.circular(22),
                        boxShadow : [BoxShadow(
                            color: Color.fromRGBO(90, 108, 234, 0.07000000029802322),
                            offset: Offset(12,26),
                            blurRadius: 50
                        )],
                        color : Color.fromRGBO(255, 255, 255, 1),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 18.0,
                          vertical: 14.0,
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Container(
                                  height: 33,
                                  width: 33,
                                  decoration: BoxDecoration(
                                      color: Color(0xFFF8D52B),
                                      borderRadius: BorderRadius.circular(100)
                                  ),
                                  child: Icon(Icons.location_on_outlined,size: 21,
                                    color : Color(0xFFE86D28),
                                  ),
                                ),
                                SizedBox(width: 14,),
                                Expanded(
                                  child:       // Figma Flutter Generator AddressWidget - TEXT
                                  // Figma Flutter Generator SpacyfreshcrabWidget - TEXT
                                  Text('Your Location', textAlign: TextAlign.left, style: TextStyle(
                                      color: Color.fromRGBO(9, 4, 27, 1),
                                      fontFamily: 'BentonSans Medium',
                                      fontSize: 15,
                                      letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                                      fontWeight: FontWeight.normal,
                                      height: 1.5 /*PERCENT not supported*/
                                  ),),
                                ),
                              ],
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 25.0,left: 0.0,bottom: 0.0),
                              child: Container(
                                  child: Center(
                                    child:
                                    // Figma Flutter Generator CallWidget - TEXT
                                    Text('Set Location', textAlign: TextAlign.left, style: TextStyle(
                                        color: Color.fromRGBO(9, 5, 28, 1),
                                        fontFamily: 'Rubik',
                                        fontSize: 14,
                                        letterSpacing: 0.5,
                                        fontWeight: FontWeight.normal,
                                        height: 1
                                    ),),
                                  ),
                                  width: 322,
                                  height: 57,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(15),
                                      topRight: Radius.circular(15),
                                      bottomLeft: Radius.circular(15),
                                      bottomRight: Radius.circular(15),
                                    ),
                                    gradient: LinearGradient(
                                        begin: Alignment(0.8459399938583374,
                                            0.1310659646987915),
                                        end: Alignment(-0.1310659646987915,
                                            0.11150387674570084),
                                        colors: [
// 16804B
                                        Color(0xFF9BDABC),
                                        Color(0xFF9BDABC),
                                        ]),
                                  )),
                            ),

                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
