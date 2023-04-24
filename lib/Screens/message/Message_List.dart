import 'package:flutter/material.dart';

import '../../Utils/appRoutes.dart';
import '../home/Home.dart';
import '../home/Home_Page.dart';
import 'chatting_page.dart';


class MessageListScreen extends StatefulWidget {
  const MessageListScreen({Key? key}) : super(key: key);

  @override
  State<MessageListScreen> createState() => _MessageListScreenState();
}

class _MessageListScreenState extends State<MessageListScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          child: Column(
              children: [
                Container(
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
                              onTap:(){
                                AppRoutes.replace(context, HomePage());
                              },
                              child: Container(
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
                Expanded(
                  child: Container(
                    child:SingleChildScrollView(
                      scrollDirection: Axis.vertical,
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 0.0,right: 0,bottom: 8.0,top: 8.0),
                            child: InkWell(
                              onTap: (){
                                AppRoutes.push(context, ChatScreen());
                              },
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
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                        margin: EdgeInsets.only(top: 8,left: 8,bottom: 10,right: 12),
                                        width: 62,
                                        height: 62,
                                        decoration: BoxDecoration(
                                          borderRadius : BorderRadius.circular(16),
                                          image : DecorationImage(
                                              image: AssetImage('images/pf2.png',),
                                              // image: NetworkImage('https://www.foodandwine.com/thmb/K_RqDtL-61c2t8H0MxDMRgr7NsQ=/750x0/filters:no_upscale():max_bytes(150000):strip_icc():format(webp)/Crispy-Crab-Cakes-with-Tomato-Butter-FT-recipe0719_1-ae6eb5920a274997a44718ebb380a686.jpg',),
                                              fit: BoxFit.cover
                                          ),
                                        )
                                    ),

                                    Expanded(
                                      child: Container(
                                        padding: EdgeInsets.only(top: 13.0),
                                        child: Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Column(
                                              mainAxisAlignment: MainAxisAlignment.start,
                                              crossAxisAlignment: CrossAxisAlignment.start,
                                              children: [
                                                Text('Anamwp', textAlign: TextAlign.left, style: TextStyle(
                                                    color: Color.fromRGBO(9, 4, 27, 1),
                                                    fontFamily: 'BentonSansMedium',
                                                    fontSize: 15,
                                                    letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                                                    fontWeight: FontWeight.normal,
                                                    height: 1.5 /*PERCENT not supported*/
                                                ),),
                                                SizedBox(height: 7.0,),
                                                Text('Your Order Just Arrived!', textAlign: TextAlign.left, style: TextStyle(
                                                    color: Color.fromRGBO(59, 59, 59, 1),
                                                    fontFamily: 'BentonSansRegular',
                                                    fontSize: 14,
                                                    letterSpacing: 0.5,
                                                    fontWeight: FontWeight.normal,
                                                    height: 1
                                                ),),
                                              ],
                                            ),

                                          ],
                                        ),
                                      ),
                                    ),

                                    Container(
                                      margin: EdgeInsets.only(right: 18.0,top: 15.0),
                                      decoration: BoxDecoration(
                                        // color : Colors.green.shade50,
                                          borderRadius: BorderRadius.circular(18.5)
                                      ),
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        children: [
                                          Text('20:00', textAlign: TextAlign.left, style: TextStyle(
                                              color: Color(0xFF3B3B3B),
                                              fontFamily: 'BentonSansRegular',
                                              fontSize: 14,
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
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 0.0,right: 0,bottom: 8.0,top: 8.0),
                            child: InkWell(
                              onTap: (){
                                AppRoutes.push(context, ChatScreen());
                              },
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
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                        margin: EdgeInsets.only(top: 8,left: 8,bottom: 10,right: 12),
                                        width: 62,
                                        height: 62,
                                        decoration: BoxDecoration(
                                          borderRadius : BorderRadius.circular(16),
                                          image : DecorationImage(
                                              image: AssetImage('images/pf2.png',),
                                              // image: NetworkImage('https://www.foodandwine.com/thmb/K_RqDtL-61c2t8H0MxDMRgr7NsQ=/750x0/filters:no_upscale():max_bytes(150000):strip_icc():format(webp)/Crispy-Crab-Cakes-with-Tomato-Butter-FT-recipe0719_1-ae6eb5920a274997a44718ebb380a686.jpg',),
                                              fit: BoxFit.cover
                                          ),
                                        )
                                    ),

                                    Expanded(
                                      child: Container(
                                        padding: EdgeInsets.only(top: 13.0),
                                        child: Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Column(
                                              mainAxisAlignment: MainAxisAlignment.start,
                                              crossAxisAlignment: CrossAxisAlignment.start,
                                              children: [
                                                Text('Anamwp', textAlign: TextAlign.left, style: TextStyle(
                                                    color: Color.fromRGBO(9, 4, 27, 1),
                                                    fontFamily: 'BentonSansMedium',
                                                    fontSize: 15,
                                                    letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                                                    fontWeight: FontWeight.normal,
                                                    height: 1.5 /*PERCENT not supported*/
                                                ),),
                                                SizedBox(height: 7.0,),
                                                Text('Your Order Just Arrived!', textAlign: TextAlign.left, style: TextStyle(
                                                    color: Color.fromRGBO(59, 59, 59, 1),
                                                    fontFamily: 'BentonSansRegular',
                                                    fontSize: 14,
                                                    letterSpacing: 0.5,
                                                    fontWeight: FontWeight.normal,
                                                    height: 1
                                                ),),
                                              ],
                                            ),

                                          ],
                                        ),
                                      ),
                                    ),

                                    Container(
                                      margin: EdgeInsets.only(right: 18.0,top: 15.0),
                                      decoration: BoxDecoration(
                                        // color : Colors.green.shade50,
                                          borderRadius: BorderRadius.circular(18.5)
                                      ),
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        children: [
                                          Text('20:00', textAlign: TextAlign.left, style: TextStyle(
                                              color: Color(0xFF3B3B3B),
                                              fontFamily: 'BentonSansRegular',
                                              fontSize: 14,
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
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 0.0,right: 0,bottom: 8.0,top: 8.0),
                            child: InkWell(
                              onTap: (){
                                AppRoutes.push(context, ChatScreen());
                              },
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
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                        margin: EdgeInsets.only(top: 8,left: 8,bottom: 10,right: 12),
                                        width: 62,
                                        height: 62,
                                        decoration: BoxDecoration(
                                          borderRadius : BorderRadius.circular(16),
                                          image : DecorationImage(
                                              image: AssetImage('images/pf2.png',),
                                              // image: NetworkImage('https://www.foodandwine.com/thmb/K_RqDtL-61c2t8H0MxDMRgr7NsQ=/750x0/filters:no_upscale():max_bytes(150000):strip_icc():format(webp)/Crispy-Crab-Cakes-with-Tomato-Butter-FT-recipe0719_1-ae6eb5920a274997a44718ebb380a686.jpg',),
                                              fit: BoxFit.cover
                                          ),
                                        )
                                    ),

                                    Expanded(
                                      child: Container(
                                        padding: EdgeInsets.only(top: 13.0),
                                        child: Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Column(
                                              mainAxisAlignment: MainAxisAlignment.start,
                                              crossAxisAlignment: CrossAxisAlignment.start,
                                              children: [
                                                Text('Anamwp', textAlign: TextAlign.left, style: TextStyle(
                                                    color: Color.fromRGBO(9, 4, 27, 1),
                                                    fontFamily: 'BentonSansMedium',
                                                    fontSize: 15,
                                                    letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                                                    fontWeight: FontWeight.normal,
                                                    height: 1.5 /*PERCENT not supported*/
                                                ),),
                                                SizedBox(height: 7.0,),
                                                Text('Your Order Just Arrived!', textAlign: TextAlign.left, style: TextStyle(
                                                    color: Color.fromRGBO(59, 59, 59, 1),
                                                    fontFamily: 'BentonSansRegular',
                                                    fontSize: 14,
                                                    letterSpacing: 0.5,
                                                    fontWeight: FontWeight.normal,
                                                    height: 1
                                                ),),
                                              ],
                                            ),

                                          ],
                                        ),
                                      ),
                                    ),

                                    Container(
                                      margin: EdgeInsets.only(right: 18.0,top: 15.0),
                                      decoration: BoxDecoration(
                                        // color : Colors.green.shade50,
                                          borderRadius: BorderRadius.circular(18.5)
                                      ),
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        children: [
                                          Text('20:00', textAlign: TextAlign.left, style: TextStyle(
                                              color: Color(0xFF3B3B3B),
                                              fontFamily: 'BentonSansRegular',
                                              fontSize: 14,
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
                          ),
                        ],
                      ),
                    ),
                  ),
                )
              ],
            ),
        ),

      ),
    );
  }
}




