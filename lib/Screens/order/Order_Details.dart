import 'package:flutter/material.dart';

import '../../Utils/appRoutes.dart';
import '../home/Home.dart';
import 'Payments_Page.dart';
class OrderDetailsScreen extends StatefulWidget {
  const OrderDetailsScreen({Key? key}) : super(key: key);

  @override
  State<OrderDetailsScreen> createState() => _OrderDetailsScreenState();
}

class _OrderDetailsScreenState extends State<OrderDetailsScreen> {
  @override
  Widget build(BuildContext context) {
    width:MediaQuery.of(context).size.width *0.90;
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
                      InkWell(
                        onTap: (){
                          AppRoutes.closeAllScreensAndNavigate(context, HomePage());
                        },
                        child: Container(
                          width: 45,
                          height: 45,
                          decoration: BoxDecoration(
                            borderRadius : BorderRadius.circular(15),
                            color : Color(0xFFF9A84D),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.only(left: 10.0),
                            child: Icon(Icons.arrow_back_ios),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10.0,top: 25,),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        child:
                  Text('Order details', textAlign: TextAlign.left, style: TextStyle(
                      color: Color.fromRGBO(9, 4, 27, 1),
                      fontFamily: 'BentonSansBold',
                      fontSize: 25,
                      letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                      fontWeight: FontWeight.normal,
                      height: 1.5 /*PERCENT not supported*/
                  ),)
                      ),

                      Padding(
                        padding: const EdgeInsets.only(right: 10.0),
                        child: Container(
                          // width: 45,
                          height: 35,
                          decoration: BoxDecoration(
                            borderRadius : BorderRadius.circular(10.0),
                            color : Color(0xFFF9A84D),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.only(left: 10.0),
                            child: Row(
                              children: [
                                Icon(Icons.mic_outlined,size: 28,),
                                Padding(
                                  padding: const EdgeInsets.only(right: 10.0),
                                  child: Text('Order By Voice',
                                  textAlign: TextAlign.left, style: TextStyle(
                                    color: Color.fromRGBO(9, 4, 27, 1),
                                    fontFamily: 'BentonSansMedium',
                                    fontSize: 15,
                                    letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                                    fontWeight: FontWeight.normal,
                                    height: 1.5 /*PERCENT not supported*/
                                ),),
                                ),
                                // Figma Flutter Generator MenunameWidget - TEXT


                              ],
                            )
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
        body: Container(
         child: Column(
           children: [
             Expanded(
               child: Container(
                 child: SingleChildScrollView(
                   scrollDirection: Axis.vertical,
                   child: Column(
                     children: [
                       Padding(
                         padding: const EdgeInsets.only(left: 10.0,right: 10.0,bottom: 8.0,top: 8.0),
                         child: Dismissible(
                             key: Key(UniqueKey().toString()),
                             direction: DismissDirection.horizontal,
                             onDismissed: (direction) {
                             },
                             background: Container(
                                 alignment: AlignmentDirectional.centerEnd,
                                 decoration: BoxDecoration(
                                   borderRadius: BorderRadius.circular(22),
                                   // color: Colors.red,
                                   color: Color(0xFFF9A84D),
                                 ),
                                 child: Row(
                                   mainAxisAlignment: MainAxisAlignment.end,
                                   children: <Widget>[
                                     Container(
                                       padding: EdgeInsets.fromLTRB(0.0, 0.0,  30.02, 0.0),
                                       child: Icon(Icons.delete_rounded,size: 30,color: Colors.white,),
                                     ),

                     ],
                   )),
            child:Container(
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
                                SizedBox(height: 6.0,),
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


                  Row(
                    children: [
                      Container(
                          margin: EdgeInsets.symmetric(
                            horizontal: 10.0,
                            vertical: 22.0,
                          ),
                          height: 26,
                          width: 26,
                          decoration: BoxDecoration(
                            color: Color(0xFF9BDABC),
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                          child:
                          Icon( Icons.remove,color: Color(0xFF006533),size: 18,),
                      ),
                      // Figma Flutter Generator AmountWidget - TEXT
                      Text('1', textAlign: TextAlign.left, style: TextStyle(
                            color: Color.fromRGBO(24, 24, 24, 1),
                            fontFamily: 'Poppins',
                            fontSize: 16,
                            letterSpacing: 0.5714285969734192,
                            fontWeight: FontWeight.normal,
                            height: 1
                      ),),

                      Container(
                          margin: EdgeInsets.symmetric(
                            horizontal: 10.0,
                            vertical: 22.0,
                          ),
                          height: 26,
                          width: 26,
                          decoration: BoxDecoration(
                            color: Color(0xFF006533),
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                          child: Icon(Icons.add,color: Colors.white,size: 18,),
                      ),
                    ],
                  )

                ],
              ),
            ),
                         ),
                       ),
                       Padding(
                         padding: const EdgeInsets.only(left: 10.0,right: 10.0,bottom: 8.0,top: 8.0),
                         child: Dismissible(
                           key: Key(UniqueKey().toString()),
                           direction: DismissDirection.horizontal,
                           onDismissed: (direction) {
                           },
                           background: Container(
                               alignment: AlignmentDirectional.centerEnd,
                               decoration: BoxDecoration(
                                 borderRadius: BorderRadius.circular(22),
                                 // color: Colors.red,
                                 color: Color(0xFFF9A84D),
                               ),
                               child: Row(
                                 mainAxisAlignment: MainAxisAlignment.end,
                                 children: <Widget>[
                                   Container(
                                     padding: EdgeInsets.fromLTRB(0.0, 0.0,  30.02, 0.0),
                                     child: Icon(Icons.delete_rounded,size: 30,color: Colors.white,),
                                   ),

                                 ],
                               )),
                           child:Container(
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
                                             SizedBox(height: 6.0,),
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


                                 Row(
                                   children: [
                                     Container(
                                       margin: EdgeInsets.symmetric(
                                         horizontal: 10.0,
                                         vertical: 22.0,
                                       ),
                                       height: 26,
                                       width: 26,
                                       decoration: BoxDecoration(
                                         color: Color(0xFF9BDABC),
                                         borderRadius: BorderRadius.circular(8.0),
                                       ),
                                       child:
                                       Icon( Icons.remove,color: Color(0xFF006533),size: 18,),
                                     ),
                                     // Figma Flutter Generator AmountWidget - TEXT
                                     Text('1', textAlign: TextAlign.left, style: TextStyle(
                                         color: Color.fromRGBO(24, 24, 24, 1),
                                         fontFamily: 'Poppins',
                                         fontSize: 16,
                                         letterSpacing: 0.5714285969734192,
                                         fontWeight: FontWeight.normal,
                                         height: 1
                                     ),),

                                     Container(
                                       margin: EdgeInsets.symmetric(
                                         horizontal: 10.0,
                                         vertical: 22.0,
                                       ),
                                       height: 26,
                                       width: 26,
                                       decoration: BoxDecoration(
                                         color: Color(0xFF006533),
                                         borderRadius: BorderRadius.circular(8.0),
                                       ),
                                       child: Icon(Icons.add,color: Colors.white,size: 18,),
                                     ),
                                   ],
                                 )

                               ],
                             ),
                           ),
                         ),
                       ),
                       Padding(
                         padding: const EdgeInsets.only(left: 10.0,right: 10.0,bottom: 8.0,top: 8.0),
                         child: Dismissible(
                           key: Key(UniqueKey().toString()),
                           direction: DismissDirection.horizontal,
                           onDismissed: (direction) {
                           },
                           background: Container(
                               alignment: AlignmentDirectional.centerEnd,
                               decoration: BoxDecoration(
                                 borderRadius: BorderRadius.circular(22),
                                 // color: Colors.red,
                                 color: Color(0xFFF9A84D),
                               ),
                               child: Row(
                                 mainAxisAlignment: MainAxisAlignment.end,
                                 children: <Widget>[
                                   Container(
                                     padding: EdgeInsets.fromLTRB(0.0, 0.0,  30.02, 0.0),
                                     child: Icon(Icons.delete_rounded,size: 30,color: Colors.white,),
                                   ),

                                 ],
                               )),
                           child:Container(
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
                                             SizedBox(height: 6.0,),
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


                                 Row(
                                   children: [
                                     Container(
                                       margin: EdgeInsets.symmetric(
                                         horizontal: 10.0,
                                         vertical: 22.0,
                                       ),
                                       height: 26,
                                       width: 26,
                                       decoration: BoxDecoration(
                                         color: Color(0xFF9BDABC),
                                         borderRadius: BorderRadius.circular(8.0),
                                       ),
                                       child:
                                       Icon( Icons.remove,color: Color(0xFF006533),size: 18,),
                                     ),
                                     // Figma Flutter Generator AmountWidget - TEXT
                                     Text('1', textAlign: TextAlign.left, style: TextStyle(
                                         color: Color.fromRGBO(24, 24, 24, 1),
                                         fontFamily: 'Poppins',
                                         fontSize: 16,
                                         letterSpacing: 0.5714285969734192,
                                         fontWeight: FontWeight.normal,
                                         height: 1
                                     ),),

                                     Container(
                                       margin: EdgeInsets.symmetric(
                                         horizontal: 10.0,
                                         vertical: 22.0,
                                       ),
                                       height: 26,
                                       width: 26,
                                       decoration: BoxDecoration(
                                         color: Color(0xFF006533),
                                         borderRadius: BorderRadius.circular(8.0),
                                       ),
                                       child: Icon(Icons.add,color: Colors.white,size: 18,),
                                     ),
                                   ],
                                 )

                               ],
                             ),
                           ),
                         ),
                       ),
                       Padding(
                         padding: const EdgeInsets.only(left: 10.0,right: 10.0,bottom: 8.0,top: 8.0),
                         child: Dismissible(
                           key: Key(UniqueKey().toString()),
                           direction: DismissDirection.horizontal,
                           onDismissed: (direction) {
                           },
                           background: Container(
                               alignment: AlignmentDirectional.centerEnd,
                               decoration: BoxDecoration(
                                 borderRadius: BorderRadius.circular(22),
                                 // color: Colors.red,
                                 color: Color(0xFFF9A84D),
                               ),
                               child: Row(
                                 mainAxisAlignment: MainAxisAlignment.end,
                                 children: <Widget>[
                                   Container(
                                     padding: EdgeInsets.fromLTRB(0.0, 0.0,  30.02, 0.0),
                                     child: Icon(Icons.delete_rounded,size: 30,color: Colors.white,),
                                   ),

                                 ],
                               )),
                           child:Container(
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
                                             SizedBox(height: 6.0,),
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


                                 Row(
                                   children: [
                                     Container(
                                       margin: EdgeInsets.symmetric(
                                         horizontal: 10.0,
                                         vertical: 22.0,
                                       ),
                                       height: 26,
                                       width: 26,
                                       decoration: BoxDecoration(
                                         color: Color(0xFF9BDABC),
                                         borderRadius: BorderRadius.circular(8.0),
                                       ),
                                       child:
                                       Icon( Icons.remove,color: Color(0xFF006533),size: 18,),
                                     ),
                                     // Figma Flutter Generator AmountWidget - TEXT
                                     Text('1', textAlign: TextAlign.left, style: TextStyle(
                                         color: Color.fromRGBO(24, 24, 24, 1),
                                         fontFamily: 'Poppins',
                                         fontSize: 16,
                                         letterSpacing: 0.5714285969734192,
                                         fontWeight: FontWeight.normal,
                                         height: 1
                                     ),),

                                     Container(
                                       margin: EdgeInsets.symmetric(
                                         horizontal: 10.0,
                                         vertical: 22.0,
                                       ),
                                       height: 26,
                                       width: 26,
                                       decoration: BoxDecoration(
                                         color: Color(0xFF006533),
                                         borderRadius: BorderRadius.circular(8.0),
                                       ),
                                       child: Icon(Icons.add,color: Colors.white,size: 18,),
                                     ),
                                   ],
                                 )

                               ],
                             ),
                           ),
                         ),
                       ),
                       Padding(
                         padding: const EdgeInsets.only(left: 10.0,right: 10.0,bottom: 8.0,top: 8.0),
                         child: Dismissible(
                           key: Key(UniqueKey().toString()),
                           direction: DismissDirection.horizontal,
                           onDismissed: (direction) {
                           },
                           background: Container(
                               alignment: AlignmentDirectional.centerEnd,
                               decoration: BoxDecoration(
                                 borderRadius: BorderRadius.circular(22),
                                 // color: Colors.red,
                                 color: Color(0xFFF9A84D),
                               ),
                               child: Row(
                                 mainAxisAlignment: MainAxisAlignment.end,
                                 children: <Widget>[
                                   Container(
                                     padding: EdgeInsets.fromLTRB(0.0, 0.0,  30.02, 0.0),
                                     child: Icon(Icons.delete_rounded,size: 30,color: Colors.white,),
                                   ),

                                 ],
                               )),
                           child:Container(
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
                                             SizedBox(height: 6.0,),
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


                                 Row(
                                   children: [
                                     Container(
                                       margin: EdgeInsets.symmetric(
                                         horizontal: 10.0,
                                         vertical: 22.0,
                                       ),
                                       height: 26,
                                       width: 26,
                                       decoration: BoxDecoration(
                                         color: Color(0xFF9BDABC),
                                         borderRadius: BorderRadius.circular(8.0),
                                       ),
                                       child:
                                       Icon( Icons.remove,color: Color(0xFF006533),size: 18,),
                                     ),
                                     // Figma Flutter Generator AmountWidget - TEXT
                                     Text('1', textAlign: TextAlign.left, style: TextStyle(
                                         color: Color.fromRGBO(24, 24, 24, 1),
                                         fontFamily: 'Poppins',
                                         fontSize: 16,
                                         letterSpacing: 0.5714285969734192,
                                         fontWeight: FontWeight.normal,
                                         height: 1
                                     ),),

                                     Container(
                                       margin: EdgeInsets.symmetric(
                                         horizontal: 10.0,
                                         vertical: 22.0,
                                       ),
                                       height: 26,
                                       width: 26,
                                       decoration: BoxDecoration(
                                         color: Color(0xFF006533),
                                         borderRadius: BorderRadius.circular(8.0),
                                       ),
                                       child: Icon(Icons.add,color: Colors.white,size: 18,),
                                     ),
                                   ],
                                 )

                               ],
                             ),
                           ),
                         ),
                       ),
                     ],
                   ),
                 ),
               ),
             ),
             Padding(
               padding: const EdgeInsets.only(bottom: 5.0,left: 4.0,right: 4.0,top: 4),
               child: Container(
                 width: 347,
                 height: 206,
                 decoration: BoxDecoration(
                   image: DecorationImage(
                     image: AssetImage('images/vfinal.png',),
                     fit: BoxFit.cover,
                     opacity: .1/2,
                   ),
                   borderRadius : BorderRadius.circular(16),
                   gradient : LinearGradient(
                       begin: Alignment(0.8459399938583374,0.1310659646987915),
                       end: Alignment(-0.1310659646987915,0.11150387674570084),
                       colors: [
                         Color(0xFF006533),
                         Color(0xFF16804B),
                       ]
                   ),
                 ),
                 child: Column(
                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                   children: [
                     Padding(
                       padding: const EdgeInsets.only(
                         right: 22.0,
                         left: 22.0,
                         top: 20,
                       ),
                       child: Row(
                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
                         children: [
                           Text('Sub-Total', textAlign: TextAlign.left, style: TextStyle(
                               color: Color.fromRGBO(254, 254, 255, 1),
                               fontFamily: 'BentonSansMedium',
                               fontSize: 14,
                               letterSpacing: 0.5,
                               fontWeight: FontWeight.normal,
                               height: 1
                           ),),
                           // Figma Flutter Generator SubtotalpriceWidget - TEXT
                           Text('120 \$', textAlign: TextAlign.left, style: TextStyle(
                               color: Color.fromRGBO(254, 254, 255, 1),
                               fontFamily: 'BentonSansMedium',
                               fontSize: 14,
                               letterSpacing: 0.5,
                               fontWeight: FontWeight.normal,
                               height: 1
                           ),)
                         ],
                       ),
                     ),
                     Padding(
                       padding: const EdgeInsets.only(
                         right: 22.0,
                         left: 22.0,
                         top: 0.0,
                       ),
                       child: Row(
                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
                         children: [
                           Text('Delivery Charge', textAlign: TextAlign.left, style: TextStyle(
                               color: Color.fromRGBO(254, 254, 255, 1),
                               fontFamily: 'BentonSansMedium',
                               fontSize: 14,
                               letterSpacing: 0.5,
                               fontWeight: FontWeight.normal,
                               height: 1
                           ),),
                           // Figma Flutter Generator SubtotalpriceWidget - TEXT
                           Text('10 \$', textAlign: TextAlign.left, style: TextStyle(
                               color: Color.fromRGBO(254, 254, 255, 1),
                               fontFamily: 'BentonSansMedium',
                               fontSize: 14,
                               letterSpacing: 0.5,
                               fontWeight: FontWeight.normal,
                               height: 1
                           ),)
                         ],
                       ),
                     ),
                     Padding(
                       padding: const EdgeInsets.only(
                         right: 22.0,
                         left: 22.0,
                         top: 0.0,
                       ),
                       child: Row(
                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
                         children: [
                           Text('Discount', textAlign: TextAlign.left, style: TextStyle(
                               color: Color.fromRGBO(254, 254, 255, 1),
                               fontFamily: 'BentonSansMedium',
                               fontSize: 14,
                               letterSpacing: 0.5,
                               fontWeight: FontWeight.normal,
                               height: 1
                           ),),
                           // Figma Flutter Generator SubtotalpriceWidget - TEXT
                           Text('20 \$', textAlign: TextAlign.left, style: TextStyle(
                               color: Color.fromRGBO(254, 254, 255, 1),
                               fontFamily: 'BentonSansMedium',
                               fontSize: 14,
                               letterSpacing: 0.5,
                               fontWeight: FontWeight.normal,
                               height: 1
                           ),)
                         ],
                       ),
                     ),
                     Padding(
                       padding: const EdgeInsets.only(
                         right: 22.0,
                         left: 22.0,
                         top: 0.0,
                       ),
                       child: Row(
                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
                         children: [
                           // Figma Flutter Generator TotalWidget - TEXT
                           Text('Total', textAlign: TextAlign.left, style: TextStyle(
                               color: Color.fromRGBO(254, 254, 255, 1),
                               fontFamily: 'BentonSansBold',
                               fontSize: 18,
                               letterSpacing: 0.6428571343421936,
                               fontWeight: FontWeight.normal,
                               height: 1
                           ),),
                           // Figma Flutter Generator TotalpriceWidget - TEXT
                           Text('150\$', textAlign: TextAlign.left, style: TextStyle(
                               color: Color.fromRGBO(254, 254, 255, 1),
                               fontFamily: 'BentonSansBold',
                               fontSize: 18,
                               letterSpacing: 0.6428571343421936,
                               fontWeight: FontWeight.normal,
                               height: 1
                           ),)
                         ],
                       ),
                     ),
                     Padding(
                       padding: const EdgeInsets.only(
                         bottom: 8.0,
                       ),
                       child: InkWell(
                         onTap: (){
                           AppRoutes.push(context, PaymentsConfirmScreen());
                         },
                         child: Container(
                             child: Center(
                               child:
                               Text('Place My Order', textAlign: TextAlign.left, style: TextStyle(
                                   color: Color(0xFF006533),
                                   fontFamily: 'BentonSansBold',
                                   fontSize: 14,
                                   letterSpacing: 0.5,
                                   fontWeight: FontWeight.normal,
                                   height: 1
                               ),),
                             ),
                             width: 325,
                             height: 57,
                             decoration: BoxDecoration(
                               borderRadius: BorderRadius.circular(15.0),
                               gradient: LinearGradient(
                                   begin: Alignment(0.8459399938583374,
                                       0.1310659646987915),
                                   end: Alignment(-0.1310659646987915,
                                       0.11150387674570084),
                                   colors: [
// 16804B
                                     Colors.white,
                                     Colors.white,
                                   ]),
                             )),
                       ),
                     ),
                   ],
                 ),
               ),
             ),
           ],
         ),
        ),

      ),
    );
  }
}
