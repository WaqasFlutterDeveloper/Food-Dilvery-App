import 'package:flutter/material.dart';

import 'home_section.dart';
class MessageListScreen extends StatefulWidget {
  const MessageListScreen({Key? key}) : super(key: key);

  @override
  State<MessageListScreen> createState() => _MessageListScreenState();
}

class _MessageListScreenState extends State<MessageListScreen> {

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
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          bottomOpacity: 0.0,
          elevation: 0.0,
          toolbarHeight: 130,
          centerTitle: true,
          flexibleSpace: Container(
            height: 130,
            decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.bottomLeft,
                  end: Alignment.bottomRight,
                  colors: <Color>[
                    Colors.white,
                    Colors.white
                  ],
                ),
                image: DecorationImage(
                    image: AssetImage('images/final.png',),
                    fit: BoxFit.cover,
                    opacity: .1
                ),
                color: Colors.white70
            ),
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
                          borderRadius : BorderRadius.circular(15),
                          color : Color.fromRGBO(249, 168, 77, 1),
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
                  padding: const EdgeInsets.only(left: 10.0,top: 25,),
                  child: Row(
                    children: [
                      Container(
                        child:Text('Chat', textAlign: TextAlign.left, style: TextStyle(
                            color: Color.fromRGBO(9, 4, 27, 1),
                            fontFamily: 'BentonSansBold',
                            fontSize: 25,
                            letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                            fontWeight: FontWeight.normal,
                            height: 1.5 /*PERCENT not supported*/
                        ),),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
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
        body:
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 10.0,right: 10,bottom: 12,top: 12),
                child: Container(
                  width: 335,
                  height: 81,
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
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                          margin: EdgeInsets.only(top: 10,left: 10,bottom: 10,right: 0),
                          width: 62,
                          height: 62,
                          decoration: BoxDecoration(
                            borderRadius : BorderRadius.circular(16),
                            image : DecorationImage(
                                image: AssetImage('images/pf2.png',),
                                fit: BoxFit.cover
                            ),
                          )
                      ),

                      Padding(
                        padding: const EdgeInsets.only(left: 8.0,right: 15.0,bottom: 15),
                        child: Container(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              // Figma Flutter Generator SamplenameWidget - TEXT
                              Text('Anamwp', textAlign: TextAlign.left, style: TextStyle(
                                  color: Color.fromRGBO(9, 4, 27, 1),
                                  fontFamily: 'BentonSansMedium',
                                  fontSize: 15,
                                  letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                                  fontWeight: FontWeight.normal,
                                  height: 1.5 /*PERCENT not supported*/
                              ),),

                              Padding(
                                padding: const EdgeInsets.only(top: 5,left: 2),
                                child: Container(
                                  child:  Expanded(
                                    child: Text('Your Order Just Arrived!',
                                      style: TextStyle(
                                          color: Color.fromRGBO(59, 59, 59, 1),
                                          fontFamily: 'BentonSansRegular',
                                          fontSize: 14,
                                          letterSpacing: 0.5,
                                          fontWeight: FontWeight.normal,
                                          height: 1
                                      ),),
                                  ),
                                ),
                              ),

                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                            left: 5,
                            right: 20,
                            bottom: 25
                        ),
                        child: Expanded(
                          child: Container(
                              child:
                              Text('20:00', textAlign: TextAlign.left, style: TextStyle(
                                  color: Color.fromRGBO(59, 59, 59, 1),
                                  fontFamily: 'BentonSansRegular',
                                  fontSize: 14,
                                  letterSpacing: 0.5,
                                  fontWeight: FontWeight.normal,
                                  height: 1
                              ),)
                          ),
                        ),
                      ),

                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10.0,right: 10,bottom: 12,top: 12),
                child: Container(
                  width: 335,
                  height: 81,
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
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                          margin: EdgeInsets.only(top: 10,left: 10,bottom: 10,right: 0),
                          width: 62,
                          height: 62,
                          decoration: BoxDecoration(
                            borderRadius : BorderRadius.circular(16),
                            image : DecorationImage(
                                image: AssetImage('images/pf2.png',),
                                fit: BoxFit.cover
                            ),
                          )
                      ),

                      Padding(
                        padding: const EdgeInsets.only(left: 8.0,right: 15.0,bottom: 15),
                        child: Container(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              // Figma Flutter Generator SamplenameWidget - TEXT
                              Text('Anamwp', textAlign: TextAlign.left, style: TextStyle(
                                  color: Color.fromRGBO(9, 4, 27, 1),
                                  fontFamily: 'BentonSansMedium',
                                  fontSize: 15,
                                  letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                                  fontWeight: FontWeight.normal,
                                  height: 1.5 /*PERCENT not supported*/
                              ),),

                              Padding(
                                padding: const EdgeInsets.only(top: 5,left: 2),
                                child: Container(
                                  child:  Expanded(
                                    child: Text('Your Order Just Arrived!',
                                      style: TextStyle(
                                          color: Color.fromRGBO(59, 59, 59, 1),
                                          fontFamily: 'BentonSansRegular',
                                          fontSize: 14,
                                          letterSpacing: 0.5,
                                          fontWeight: FontWeight.normal,
                                          height: 1
                                      ),),
                                  ),
                                ),
                              ),

                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                            left: 5,
                            right: 20,
                            bottom: 25
                        ),
                        child: Expanded(
                          child: Container(
                              child:
                              Text('20:00', textAlign: TextAlign.left, style: TextStyle(
                                  color: Color.fromRGBO(59, 59, 59, 1),
                                  fontFamily: 'BentonSansRegular',
                                  fontSize: 14,
                                  letterSpacing: 0.5,
                                  fontWeight: FontWeight.normal,
                                  height: 1
                              ),)
                          ),
                        ),
                      ),

                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10.0,right: 10,bottom: 12,top: 12),
                child: Container(
                  width: 335,
                  height: 81,
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
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                          margin: EdgeInsets.only(top: 10,left: 10,bottom: 10,right: 0),
                          width: 62,
                          height: 62,
                          decoration: BoxDecoration(
                            borderRadius : BorderRadius.circular(16),
                            image : DecorationImage(
                                image: AssetImage('images/pf2.png',),
                                fit: BoxFit.cover
                            ),
                          )
                      ),

                      Padding(
                        padding: const EdgeInsets.only(left: 8.0,right: 15.0,bottom: 15),
                        child: Container(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              // Figma Flutter Generator SamplenameWidget - TEXT
                              Text('Anamwp', textAlign: TextAlign.left, style: TextStyle(
                                  color: Color.fromRGBO(9, 4, 27, 1),
                                  fontFamily: 'BentonSansMedium',
                                  fontSize: 15,
                                  letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                                  fontWeight: FontWeight.normal,
                                  height: 1.5 /*PERCENT not supported*/
                              ),),

                              Padding(
                                padding: const EdgeInsets.only(top: 5,left: 2),
                                child: Container(
                                  child:  Expanded(
                                    child: Text('Your Order Just Arrived!',
                                      style: TextStyle(
                                          color: Color.fromRGBO(59, 59, 59, 1),
                                          fontFamily: 'BentonSansRegular',
                                          fontSize: 14,
                                          letterSpacing: 0.5,
                                          fontWeight: FontWeight.normal,
                                          height: 1
                                      ),),
                                  ),
                                ),
                              ),

                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                            left: 5,
                            right: 20,
                            bottom: 25
                        ),
                        child: Expanded(
                          child: Container(
                              child:
                              Text('20:00', textAlign: TextAlign.left, style: TextStyle(
                                  color: Color.fromRGBO(59, 59, 59, 1),
                                  fontFamily: 'BentonSansRegular',
                                  fontSize: 14,
                                  letterSpacing: 0.5,
                                  fontWeight: FontWeight.normal,
                                  height: 1
                              ),)
                          ),
                        ),
                      ),

                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10.0,right: 10,bottom: 12,top: 12),
                child: Container(
                  width: 335,
                  height: 81,
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
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                          margin: EdgeInsets.only(top: 10,left: 10,bottom: 10,right: 0),
                          width: 62,
                          height: 62,
                          decoration: BoxDecoration(
                            borderRadius : BorderRadius.circular(16),
                            image : DecorationImage(
                                image: AssetImage('images/pf2.png',),
                                fit: BoxFit.cover
                            ),
                          )
                      ),

                      Padding(
                        padding: const EdgeInsets.only(left: 8.0,right: 15.0,bottom: 15),
                        child: Container(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              // Figma Flutter Generator SamplenameWidget - TEXT
                              Text('Anamwp', textAlign: TextAlign.left, style: TextStyle(
                                  color: Color.fromRGBO(9, 4, 27, 1),
                                  fontFamily: 'BentonSansMedium',
                                  fontSize: 15,
                                  letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                                  fontWeight: FontWeight.normal,
                                  height: 1.5 /*PERCENT not supported*/
                              ),),

                              Padding(
                                padding: const EdgeInsets.only(top: 5,left: 2),
                                child: Container(
                                  child:  Expanded(
                                    child: Text('Your Order Just Arrived!',
                                      style: TextStyle(
                                          color: Color.fromRGBO(59, 59, 59, 1),
                                          fontFamily: 'BentonSansRegular',
                                          fontSize: 14,
                                          letterSpacing: 0.5,
                                          fontWeight: FontWeight.normal,
                                          height: 1
                                      ),),
                                  ),
                                ),
                              ),

                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                            left: 5,
                            right: 20,
                            bottom: 25
                        ),
                        child: Expanded(
                          child: Container(
                              child:
                              Text('20:00', textAlign: TextAlign.left, style: TextStyle(
                                  color: Color.fromRGBO(59, 59, 59, 1),
                                  fontFamily: 'BentonSansRegular',
                                  fontSize: 14,
                                  letterSpacing: 0.5,
                                  fontWeight: FontWeight.normal,
                                  height: 1
                              ),)
                          ),
                        ),
                      ),

                    ],
                  ),
                ),
              ),
            ],
          ),

      ),
    );
  }
  ShaderMask Grident_Icon(
      Color topColor, Color bottomColor) {
    return ShaderMask(
      blendMode: BlendMode.srcIn,
      shaderCallback: (Rect bounds) => RadialGradient(
        stops: [1.0, 10],
        colors: [
          topColor,
          bottomColor,
        ],
      ).createShader(bounds),
    );
  }
}




