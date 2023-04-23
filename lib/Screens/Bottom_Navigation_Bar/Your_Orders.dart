import 'package:flutter/material.dart';

class YourOrdersScreen extends StatefulWidget {
  const YourOrdersScreen({Key? key}) : super(key: key);

  @override
  State<YourOrdersScreen> createState() => _YourOrdersScreenState();
}

class _YourOrdersScreenState extends State<YourOrdersScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 0.0,right: 0,bottom: 8.0,top: 8.0),
            child: Container(
              width: 347,
              height: 103,
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
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                      margin: EdgeInsets.only(top: 10,left: 8,bottom: 10,right: 12),
                      width: 62,
                      height: 62,
                      decoration: BoxDecoration(
                        borderRadius : BorderRadius.circular(16),
                        image : DecorationImage(
                          // image: AssetImage('images/pf2.png',),
                            image: NetworkImage('https://www.foodandwine.com/thmb/K_RqDtL-61c2t8H0MxDMRgr7NsQ=/750x0/filters:no_upscale():max_bytes(150000):strip_icc():format(webp)/Crispy-Crab-Cakes-with-Tomato-Butter-FT-recipe0719_1-ae6eb5920a274997a44718ebb380a686.jpg',),
                            fit: BoxFit.cover
                        ),
                      )
                  ),

                  Expanded(
                    child: Container(
                      padding: EdgeInsets.only(top: 5.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('Spacy fresh crab', textAlign: TextAlign.left, style: TextStyle(
                                  color: Color.fromRGBO(9, 4, 27, 1),
                                  fontFamily: 'BentonSansMedium',
                                  fontSize: 15,
                                  letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                                  fontWeight: FontWeight.normal,
                                  height: 1.5 /*PERCENT not supported*/
                              ),),
                              Text('Waroenk kita', textAlign: TextAlign.left, style: TextStyle(
                                  color: Color.fromRGBO(59, 59, 59, 1),
                                  fontFamily: 'BentonSansRegular',
                                  fontSize: 14,
                                  letterSpacing: 0.5,
                                  fontWeight: FontWeight.normal,
                                  height: 1
                              ),),
                            ],
                          ),
                          SizedBox(height: 15.0,),
                          Expanded(
                            child:
                            // Figma Flutter Generator PrieceWidget - TEXT
                            Text('\$ 35', textAlign: TextAlign.left, style: TextStyle(
                                color: Color(0xFF006533),
                                fontFamily: 'BentonSansMedium',
                                fontSize: 19,
                                letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                                fontWeight: FontWeight.normal,
                                height: 1.5 /*PERCENT not supported*/
                            ),),
                          )

                        ],
                      ),
                    ),
                  ),

                  Container(
                    height: 29,
                    width: 85,
                    margin: EdgeInsets.only(right: 18.0,top: 25.0),
                    decoration: BoxDecoration(
                      // color : Colors.green.shade50,
                        color: Color(0xFF006533),
                        borderRadius: BorderRadius.circular(18.5)
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('Proccess', textAlign: TextAlign.left, style: TextStyle(
                            color: Color.fromRGBO(255, 255, 255, 1),
                            fontFamily: 'BentonSansMedium',
                            fontSize: 12,
                            letterSpacing: 0.5,
                            fontWeight: FontWeight.normal,
                            height: 1
                        ),),
                      ],
                    ),
                  ),

                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 0.0,right: 0,bottom: 8.0,top: 8.0),
            child: Container(
              width: 347,
              height: 103,
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
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                      margin: EdgeInsets.only(top: 10,left: 8,bottom: 10,right: 12),
                      width: 62,
                      height: 62,
                      decoration: BoxDecoration(
                        borderRadius : BorderRadius.circular(16),
                        image : DecorationImage(
                          // image: AssetImage('images/pf2.png',),
                            image: NetworkImage('https://www.foodandwine.com/thmb/K_RqDtL-61c2t8H0MxDMRgr7NsQ=/750x0/filters:no_upscale():max_bytes(150000):strip_icc():format(webp)/Crispy-Crab-Cakes-with-Tomato-Butter-FT-recipe0719_1-ae6eb5920a274997a44718ebb380a686.jpg',),
                            fit: BoxFit.cover
                        ),
                      )
                  ),

                  Expanded(
                    child: Container(
                      padding: EdgeInsets.only(top: 5.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('Spacy fresh crab', textAlign: TextAlign.left, style: TextStyle(
                                  color: Color.fromRGBO(9, 4, 27, 1),
                                  fontFamily: 'BentonSansMedium',
                                  fontSize: 15,
                                  letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                                  fontWeight: FontWeight.normal,
                                  height: 1.5 /*PERCENT not supported*/
                              ),),
                              Text('Waroenk kita', textAlign: TextAlign.left, style: TextStyle(
                                  color: Color.fromRGBO(59, 59, 59, 1),
                                  fontFamily: 'BentonSansRegular',
                                  fontSize: 14,
                                  letterSpacing: 0.5,
                                  fontWeight: FontWeight.normal,
                                  height: 1
                              ),),
                            ],
                          ),
                          SizedBox(height: 15.0,),
                          Expanded(
                            child:
                            // Figma Flutter Generator PrieceWidget - TEXT
                            Text('\$ 35', textAlign: TextAlign.left, style: TextStyle(
                                color: Color(0xFF006533),
                                fontFamily: 'BentonSansMedium',
                                fontSize: 19,
                                letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                                fontWeight: FontWeight.normal,
                                height: 1.5 /*PERCENT not supported*/
                            ),),
                          )

                        ],
                      ),
                    ),
                  ),

                  Container(
                    height: 29,
                    width: 85,
                    margin: EdgeInsets.only(right: 18.0,top: 25.0),
                    decoration: BoxDecoration(
                      // color : Colors.green.shade50,
                        color: Color(0xFF006533),
                        borderRadius: BorderRadius.circular(18.5)
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('Proccess', textAlign: TextAlign.left, style: TextStyle(
                            color: Color.fromRGBO(255, 255, 255, 1),
                            fontFamily: 'BentonSansMedium',
                            fontSize: 12,
                            letterSpacing: 0.5,
                            fontWeight: FontWeight.normal,
                            height: 1
                        ),),
                      ],
                    ),
                  ),

                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 0.0,right: 0,bottom: 8.0,top: 8.0),
            child: Container(
              width: 347,
              height: 103,
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
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                      margin: EdgeInsets.only(top: 10,left: 8,bottom: 10,right: 12),
                      width: 62,
                      height: 62,
                      decoration: BoxDecoration(
                        borderRadius : BorderRadius.circular(16),
                        image : DecorationImage(
                          // image: AssetImage('images/pf2.png',),
                            image: NetworkImage('https://www.foodandwine.com/thmb/K_RqDtL-61c2t8H0MxDMRgr7NsQ=/750x0/filters:no_upscale():max_bytes(150000):strip_icc():format(webp)/Crispy-Crab-Cakes-with-Tomato-Butter-FT-recipe0719_1-ae6eb5920a274997a44718ebb380a686.jpg',),
                            fit: BoxFit.cover
                        ),
                      )
                  ),

                  Expanded(
                    child: Container(
                      padding: EdgeInsets.only(top: 5.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('Spacy fresh crab', textAlign: TextAlign.left, style: TextStyle(
                                  color: Color.fromRGBO(9, 4, 27, 1),
                                  fontFamily: 'BentonSansMedium',
                                  fontSize: 15,
                                  letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                                  fontWeight: FontWeight.normal,
                                  height: 1.5 /*PERCENT not supported*/
                              ),),
                              Text('Waroenk kita', textAlign: TextAlign.left, style: TextStyle(
                                  color: Color.fromRGBO(59, 59, 59, 1),
                                  fontFamily: 'BentonSansRegular',
                                  fontSize: 14,
                                  letterSpacing: 0.5,
                                  fontWeight: FontWeight.normal,
                                  height: 1
                              ),),
                            ],
                          ),
                          SizedBox(height: 15.0,),
                          Expanded(
                            child:
                            // Figma Flutter Generator PrieceWidget - TEXT
                            Text('\$ 35', textAlign: TextAlign.left, style: TextStyle(
                                color: Color(0xFF006533),
                                fontFamily: 'BentonSansMedium',
                                fontSize: 19,
                                letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                                fontWeight: FontWeight.normal,
                                height: 1.5 /*PERCENT not supported*/
                            ),),
                          )

                        ],
                      ),
                    ),
                  ),

                  Container(
                    height: 29,
                    width: 85,
                    margin: EdgeInsets.only(right: 18.0,top: 25.0),
                    decoration: BoxDecoration(
                      // color : Colors.green.shade50,
                        color: Color(0xFF006533),
                        borderRadius: BorderRadius.circular(18.5)
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('Proccess', textAlign: TextAlign.left, style: TextStyle(
                            color: Color.fromRGBO(255, 255, 255, 1),
                            fontFamily: 'BentonSansMedium',
                            fontSize: 12,
                            letterSpacing: 0.5,
                            fontWeight: FontWeight.normal,
                            height: 1
                        ),),
                      ],
                    ),
                  ),

                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 0.0,right: 0,bottom: 8.0,top: 8.0),
            child: Container(
              width: 347,
              height: 103,
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
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                      margin: EdgeInsets.only(top: 10,left: 8,bottom: 10,right: 12),
                      width: 62,
                      height: 62,
                      decoration: BoxDecoration(
                        borderRadius : BorderRadius.circular(16),
                        image : DecorationImage(
                          // image: AssetImage('images/pf2.png',),
                            image: NetworkImage('https://www.foodandwine.com/thmb/K_RqDtL-61c2t8H0MxDMRgr7NsQ=/750x0/filters:no_upscale():max_bytes(150000):strip_icc():format(webp)/Crispy-Crab-Cakes-with-Tomato-Butter-FT-recipe0719_1-ae6eb5920a274997a44718ebb380a686.jpg',),
                            fit: BoxFit.cover
                        ),
                      )
                  ),

                  Expanded(
                    child: Container(
                      padding: EdgeInsets.only(top: 5.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('Spacy fresh crab', textAlign: TextAlign.left, style: TextStyle(
                                  color: Color.fromRGBO(9, 4, 27, 1),
                                  fontFamily: 'BentonSansMedium',
                                  fontSize: 15,
                                  letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                                  fontWeight: FontWeight.normal,
                                  height: 1.5 /*PERCENT not supported*/
                              ),),
                              Text('Waroenk kita', textAlign: TextAlign.left, style: TextStyle(
                                  color: Color.fromRGBO(59, 59, 59, 1),
                                  fontFamily: 'BentonSansRegular',
                                  fontSize: 14,
                                  letterSpacing: 0.5,
                                  fontWeight: FontWeight.normal,
                                  height: 1
                              ),),
                            ],
                          ),
                          SizedBox(height: 15.0,),
                          Expanded(
                            child:
                            // Figma Flutter Generator PrieceWidget - TEXT
                            Text('\$ 35', textAlign: TextAlign.left, style: TextStyle(
                                color: Color(0xFF006533),
                                fontFamily: 'BentonSansMedium',
                                fontSize: 19,
                                letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                                fontWeight: FontWeight.normal,
                                height: 1.5 /*PERCENT not supported*/
                            ),),
                          )

                        ],
                      ),
                    ),
                  ),

                  Container(
                    height: 29,
                    width: 85,
                    margin: EdgeInsets.only(right: 18.0,top: 25.0),
                    decoration: BoxDecoration(
                      // color : Colors.green.shade50,
                        color: Color(0xFF006533),
                        borderRadius: BorderRadius.circular(18.5)
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('Proccess', textAlign: TextAlign.left, style: TextStyle(
                            color: Color.fromRGBO(255, 255, 255, 1),
                            fontFamily: 'BentonSansMedium',
                            fontSize: 12,
                            letterSpacing: 0.5,
                            fontWeight: FontWeight.normal,
                            height: 1
                        ),),
                      ],
                    ),
                  ),

                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 0.0,right: 0,bottom: 8.0,top: 8.0),
            child: Container(
              width: 347,
              height: 103,
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
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                      margin: EdgeInsets.only(top: 10,left: 8,bottom: 10,right: 12),
                      width: 62,
                      height: 62,
                      decoration: BoxDecoration(
                        borderRadius : BorderRadius.circular(16),
                        image : DecorationImage(
                          // image: AssetImage('images/pf2.png',),
                            image: NetworkImage('https://www.foodandwine.com/thmb/K_RqDtL-61c2t8H0MxDMRgr7NsQ=/750x0/filters:no_upscale():max_bytes(150000):strip_icc():format(webp)/Crispy-Crab-Cakes-with-Tomato-Butter-FT-recipe0719_1-ae6eb5920a274997a44718ebb380a686.jpg',),
                            fit: BoxFit.cover
                        ),
                      )
                  ),

                  Expanded(
                    child: Container(
                      padding: EdgeInsets.only(top: 5.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('Spacy fresh crab', textAlign: TextAlign.left, style: TextStyle(
                                  color: Color.fromRGBO(9, 4, 27, 1),
                                  fontFamily: 'BentonSansMedium',
                                  fontSize: 15,
                                  letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                                  fontWeight: FontWeight.normal,
                                  height: 1.5 /*PERCENT not supported*/
                              ),),
                              Text('Waroenk kita', textAlign: TextAlign.left, style: TextStyle(
                                  color: Color.fromRGBO(59, 59, 59, 1),
                                  fontFamily: 'BentonSansRegular',
                                  fontSize: 14,
                                  letterSpacing: 0.5,
                                  fontWeight: FontWeight.normal,
                                  height: 1
                              ),),
                            ],
                          ),
                          SizedBox(height: 15.0,),
                          Expanded(
                            child:
                            // Figma Flutter Generator PrieceWidget - TEXT
                            Text('\$ 35', textAlign: TextAlign.left, style: TextStyle(
                                color: Color(0xFF006533),
                                fontFamily: 'BentonSansMedium',
                                fontSize: 19,
                                letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                                fontWeight: FontWeight.normal,
                                height: 1.5 /*PERCENT not supported*/
                            ),),
                          )

                        ],
                      ),
                    ),
                  ),

                  Container(
                    height: 29,
                    width: 85,
                    margin: EdgeInsets.only(right: 18.0,top: 25.0),
                    decoration: BoxDecoration(
                      // color : Colors.green.shade50,
                        color: Color(0xFC1B9B9),
                        borderRadius: BorderRadius.circular(18.5)
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('Proccess', textAlign: TextAlign.left, style: TextStyle(
                            color: Colors.white,
                            fontFamily: 'BentonSansMedium',
                            fontSize: 12,
                            letterSpacing: 0.5,
                            fontWeight: FontWeight.normal,
                            height: 1
                        ),),
                      ],
                    ),
                  ),

                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 0.0,right: 0,bottom: 8.0,top: 8.0),
            child: Container(
              width: 347,
              height: 103,
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
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                      margin: EdgeInsets.only(top: 10,left: 8,bottom: 10,right: 12),
                      width: 62,
                      height: 62,
                      decoration: BoxDecoration(
                        borderRadius : BorderRadius.circular(16),
                        image : DecorationImage(
                          // image: AssetImage('images/pf2.png',),
                            image: NetworkImage('https://www.foodandwine.com/thmb/K_RqDtL-61c2t8H0MxDMRgr7NsQ=/750x0/filters:no_upscale():max_bytes(150000):strip_icc():format(webp)/Crispy-Crab-Cakes-with-Tomato-Butter-FT-recipe0719_1-ae6eb5920a274997a44718ebb380a686.jpg',),
                            fit: BoxFit.cover
                        ),
                      )
                  ),

                  Expanded(
                    child: Container(
                      padding: EdgeInsets.only(top: 5.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('Spacy fresh crab', textAlign: TextAlign.left, style: TextStyle(
                                  color: Color.fromRGBO(9, 4, 27, 1),
                                  fontFamily: 'BentonSansMedium',
                                  fontSize: 15,
                                  letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                                  fontWeight: FontWeight.normal,
                                  height: 1.5 /*PERCENT not supported*/
                              ),),
                              Text('Waroenk kita', textAlign: TextAlign.left, style: TextStyle(
                                  color: Color.fromRGBO(59, 59, 59, 1),
                                  fontFamily: 'BentonSansRegular',
                                  fontSize: 14,
                                  letterSpacing: 0.5,
                                  fontWeight: FontWeight.normal,
                                  height: 1
                              ),),
                            ],
                          ),
                          SizedBox(height: 15.0,),
                          Expanded(
                            child:
                            // Figma Flutter Generator PrieceWidget - TEXT
                            Text('\$ 35', textAlign: TextAlign.left, style: TextStyle(
                                color: Color(0xFF006533),
                                fontFamily: 'BentonSansMedium',
                                fontSize: 19,
                                letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                                fontWeight: FontWeight.normal,
                                height: 1.5 /*PERCENT not supported*/
                            ),),
                          )

                        ],
                      ),
                    ),
                  ),

                  Container(
                    height: 29,
                    width: 85,
                    margin: EdgeInsets.only(right: 18.0,top: 25.0),
                    decoration: BoxDecoration(
                      // color : Colors.green.shade50,
                        color: Color(0xFC1B9B9),
                        borderRadius: BorderRadius.circular(18.5)
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('Proccess', textAlign: TextAlign.left, style: TextStyle(
                            color: Colors.white,
                            fontFamily: 'BentonSansMedium',
                            fontSize: 12,
                            letterSpacing: 0.5,
                            fontWeight: FontWeight.normal,
                            height: 1
                        ),),
                      ],
                    ),
                  ),

                ],
              ),
            ),
          ),

        ],
      ),
    );
  }
}
