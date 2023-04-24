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
            padding: const EdgeInsets.only(bottom: 8.0,left: 6),
            child: Row(
              children: [
                Container(
                  width: 267,
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
                Container(
                  margin: EdgeInsets.only(left: 8.0),
                  width: 49,
                  height: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Colors.grey[200],
                  ),
                  child: Icon(
                    Icons.filter_list_outlined,
                    size: 26,
                    color: Color(0xFFDA6317),
                  ),
                ),
              ],
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
