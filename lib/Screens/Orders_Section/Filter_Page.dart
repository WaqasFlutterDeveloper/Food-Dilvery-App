import 'package:flutter/material.dart';

class FilterScreen extends StatefulWidget {
  const FilterScreen({Key? key}) : super(key: key);

  @override
  State<FilterScreen> createState() => _FilterScreenState();
}

class _FilterScreenState extends State<FilterScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        bottomOpacity: 0.0,
        elevation: 0.0,
        toolbarHeight: 130,
        centerTitle: true,
        flexibleSpace: Padding(
          padding: const EdgeInsets.only(top: 1.0/10),
          child: Container(
            height: 160,
            decoration: BoxDecoration(
              // borderRadius: BorderRadius.only(topLeft: Radius.circular(60)),
              gradient: LinearGradient(
                stops: [.6, .5],
                begin: Alignment.bottomLeft,
                end: Alignment.topRight,
                colors: [
                  // Colors.grey.shade200,
                  Colors.white,
                  // Color(0xFFF4F8F6), // top Right part
                  Color(0xFBFBFB), // top Right part
                ],
              ),
              image: DecorationImage(
                image: AssetImage('images/final.png',),
                fit: BoxFit.cover,
                opacity: .2/5,
                colorFilter:
                ColorFilter.mode(Colors.grey[700]!, BlendMode.modulate),
              ),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 20.0,left: 15.0,right: 25.0),
                  child: Row(
                    children: [
                      Expanded(
                          child: Padding(
                            padding: const EdgeInsets.only(right: 10.0,top: 33.0,left: 10.0),
                            child: Text('Find Your Favorite Food', textAlign: TextAlign.left, style: TextStyle(
                                color: Color.fromRGBO(9, 4, 27, 1),
                                fontFamily: 'BentonSansBold',
                                fontSize: 31,
                                letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                                fontWeight: FontWeight.normal,
                                height: 1.5 /*PERCENT not supported*/
                            ),),
                          )
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 10.0,right: 10.0,top: 15),
                        child: Container(
                          height: 45,
                          width: 45,
                          decoration: BoxDecoration(
                            color: Color(0xFFF6FBF8),
                            borderRadius: BorderRadius.circular(15),
                          ),
                          child: Icon(Icons.notifications_none_sharp,
                            size: 30,
                            color: Color(0xFF006533),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(
                horizontal: 12,
                vertical: 5
            ),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(bottom: 5.0,left: 6),
                  child: Row(
                    children: [
                      Container(
                        width: 325,
                        height: 50,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: Colors.grey[200],
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(14.0),
                          child: Row(
                            children: [
                              Icon(Icons.search,size: 26,
                                color: Color(0xFFDA6317),
                              ),
                              SizedBox(width: 12,),
                              Text('What do you want to order?', textAlign: TextAlign.left, style: TextStyle(
                                  color: Color.fromRGBO(218, 99, 23, 1),
                                  fontFamily: 'Roboto',
                                  fontSize: 12,
                                  letterSpacing: 0.5,
                                  fontWeight: FontWeight.normal,
                                  height: 1
                              ),)
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Type', textAlign: TextAlign.left, style: TextStyle(
                          color: Color.fromRGBO(9, 4, 27, 1),
                          fontFamily: 'BentonSansBold',
                          fontSize: 15,
                          letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                          fontWeight: FontWeight.normal,
                          height: 1.5 /*PERCENT not supported*/
                      ),),
                    ],
                  ),
                ),
                
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 8.0),
                  child: Row(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          borderRadius : BorderRadius.circular(15),
                          color : Color.fromRGBO(254, 173, 29, 0.10000000149011612),
                        ),
                        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 14),
                        child: Row(
                          mainAxisSize: MainAxisSize.min,

                          children: <Widget>[
                            Text('Restaurant', textAlign: TextAlign.left, style: TextStyle(
                                color: Color.fromRGBO(218, 99, 23, 1),
                                fontFamily: 'BentonSansMedium',
                                fontSize: 12,
                                letterSpacing: 0.4285714328289032,
                                fontWeight: FontWeight.normal,
                                height: 1
                            ),),

                          ],
                        ),
                      ),
                      SizedBox(width: 30,),
                      Container(
                        decoration: BoxDecoration(
                          borderRadius : BorderRadius.circular(15),
                          color : Color.fromRGBO(254, 173, 29, 0.10000000149011612),
                        ),
                        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 14),
                        child: Row(
                          mainAxisSize: MainAxisSize.min,

                          children: <Widget>[
                            Text('Menu', textAlign: TextAlign.left, style: TextStyle(
                                color: Color.fromRGBO(218, 99, 23, 1),
                                fontFamily: 'BentonSansMedium',
                                fontSize: 12,
                                letterSpacing: 0.4285714328289032,
                                fontWeight: FontWeight.normal,
                                height: 1
                            ),),

                          ],
                        ),
                      ),
                    ],
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Location', textAlign: TextAlign.left, style: TextStyle(
                          color: Color.fromRGBO(9, 4, 27, 1),
                          fontFamily: 'BentonSansBold',
                          fontSize: 15,
                          letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                          fontWeight: FontWeight.normal,
                          height: 1.5 /*PERCENT not supported*/
                      ),),
                    ],
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 8.0),
                  child: Row(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          borderRadius : BorderRadius.circular(15),
                          color : Color.fromRGBO(254, 173, 29, 0.10000000149011612),
                        ),
                        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 14),
                        child: Row(
                          mainAxisSize: MainAxisSize.min,

                          children: <Widget>[
                            Text('1 Km', textAlign: TextAlign.left, style: TextStyle(
                                color: Color.fromRGBO(218, 99, 23, 1),
                                fontFamily: 'BentonSansMedium',
                                fontSize: 12,
                                letterSpacing: 0.4285714328289032,
                                fontWeight: FontWeight.normal,
                                height: 1
                            ),),

                          ],
                        ),
                      ),
                      SizedBox(width: 10,),
                      Container(
                        decoration: BoxDecoration(
                          borderRadius : BorderRadius.circular(15),
                          color : Color.fromRGBO(254, 173, 29, 0.10000000149011612),
                        ),
                        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 14),
                        child: Row(
                          mainAxisSize: MainAxisSize.min,

                          children: <Widget>[
                            Text('>10 Km', textAlign: TextAlign.left, style: TextStyle(
                                color: Color.fromRGBO(218, 99, 23, 1),
                                fontFamily: 'BentonSansMedium',
                                fontSize: 12,
                                letterSpacing: 0.4285714328289032,
                                fontWeight: FontWeight.normal,
                                height: 1
                            ),),

                          ],
                        ),
                      ),
                      SizedBox(width: 10,),
                      Container(
                        decoration: BoxDecoration(
                          borderRadius : BorderRadius.circular(15),
                          color : Color.fromRGBO(254, 173, 29, 0.10000000149011612),
                        ),
                        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 14),
                        child: Row(
                          mainAxisSize: MainAxisSize.min,

                          children: <Widget>[
                            Text('<10 Km', textAlign: TextAlign.left, style: TextStyle(
                                color: Color.fromRGBO(218, 99, 23, 1),
                                fontFamily: 'BentonSansMedium',
                                fontSize: 12,
                                letterSpacing: 0.4285714328289032,
                                fontWeight: FontWeight.normal,
                                height: 1
                            ),),

                          ],
                        ),
                      ),

                    ],
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Food', textAlign: TextAlign.left, style: TextStyle(
                          color: Color.fromRGBO(9, 4, 27, 1),
                          fontFamily: 'BentonSansBold',
                          fontSize: 15,
                          letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                          fontWeight: FontWeight.normal,
                          height: 1.5 /*PERCENT not supported*/
                      ),),
                    ],
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 8.0),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              borderRadius : BorderRadius.circular(15),
                              color : Color.fromRGBO(254, 173, 29, 0.10000000149011612),
                            ),
                            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 14),
                            child: Row(
                              mainAxisSize: MainAxisSize.min,

                              children: <Widget>[
                                Text('Cake', textAlign: TextAlign.left, style: TextStyle(
                                    color: Color.fromRGBO(218, 99, 23, 1),
                                    fontFamily: 'BentonSansMedium',
                                    fontSize: 12,
                                    letterSpacing: 0.4285714328289032,
                                    fontWeight: FontWeight.normal,
                                    height: 1
                                ),),

                              ],
                            ),
                          ),
                          SizedBox(width: 10,),
                          Container(
                            decoration: BoxDecoration(
                              borderRadius : BorderRadius.circular(15),
                              color : Color.fromRGBO(254, 173, 29, 0.10000000149011612),
                            ),
                            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 14),
                            child: Row(
                              mainAxisSize: MainAxisSize.min,

                              children: <Widget>[
                                Text('Soup', textAlign: TextAlign.left, style: TextStyle(
                                    color: Color.fromRGBO(218, 99, 23, 1),
                                    fontFamily: 'BentonSansMedium',
                                    fontSize: 12,
                                    letterSpacing: 0.4285714328289032,
                                    fontWeight: FontWeight.normal,
                                    height: 1
                                ),),

                              ],
                            ),
                          ),
                          SizedBox(width: 10,),
                          Container(
                            decoration: BoxDecoration(
                              borderRadius : BorderRadius.circular(15),
                              color : Color.fromRGBO(254, 173, 29, 0.10000000149011612),
                            ),
                            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 14),
                            child: Row(
                              mainAxisSize: MainAxisSize.min,

                              children: <Widget>[
                                Text('Main Course', textAlign: TextAlign.left, style: TextStyle(
                                    color: Color.fromRGBO(218, 99, 23, 1),
                                    fontFamily: 'BentonSansMedium',
                                    fontSize: 12,
                                    letterSpacing: 0.4285714328289032,
                                    fontWeight: FontWeight.normal,
                                    height: 1
                                ),),

                              ],
                            ),
                          ),

                        ],
                      ),
                      SizedBox(height: 15,),
                      Row(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              borderRadius : BorderRadius.circular(15),
                              color : Color.fromRGBO(254, 173, 29, 0.10000000149011612),
                            ),
                            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 14),
                            child: Row(
                              mainAxisSize: MainAxisSize.min,

                              children: <Widget>[
                                Text('Appetizer', textAlign: TextAlign.left, style: TextStyle(
                                    color: Color.fromRGBO(218, 99, 23, 1),
                                    fontFamily: 'BentonSansMedium',
                                    fontSize: 12,
                                    letterSpacing: 0.4285714328289032,
                                    fontWeight: FontWeight.normal,
                                    height: 1
                                ),),

                              ],
                            ),
                          ),
                          SizedBox(width: 10,),
                          Container(
                            decoration: BoxDecoration(
                              borderRadius : BorderRadius.circular(15),
                              color : Color.fromRGBO(254, 173, 29, 0.10000000149011612),
                            ),
                            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 14),
                            child: Row(
                              mainAxisSize: MainAxisSize.min,

                              children: <Widget>[
                                Text('Dessert', textAlign: TextAlign.left, style: TextStyle(
                                    color: Color.fromRGBO(218, 99, 23, 1),
                                    fontFamily: 'BentonSansMedium',
                                    fontSize: 12,
                                    letterSpacing: 0.4285714328289032,
                                    fontWeight: FontWeight.normal,
                                    height: 1
                                ),),

                              ],
                            ),
                          ),

                        ],
                      ),
                    ],
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.only(top: 60.0,left: 8.0),
                  child: Container(
                      child: Center(
                        child: Text(
                          'Search',
                          textAlign: TextAlign.left,
                          style: TextStyle(
                              color: Colors.white,
                              fontFamily: 'BentonSansBold',
                              fontSize: 14,
                              letterSpacing:
                              0 /*percentages not used in flutter. defaulting to zero*/,
                              fontWeight: FontWeight.normal,
                              height: 1.0 /*PERCENT not supported*/
                          ),
                        ),
                      ),
                      width: 322,
                      height: 52,
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
                              Color(0xFF006533),
                              Color(0xFF16804B),
                            ]),
                      )),
                ),

              ],
            ),
          ),
        ],
      ),
    );
  }
}
