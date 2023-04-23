import 'package:flutter/material.dart';

class NotificationScreen extends StatefulWidget {
  const NotificationScreen({Key? key}) : super(key: key);

  @override
  State<NotificationScreen> createState() => _NotificationScreenState();
}

class _NotificationScreenState extends State<NotificationScreen> {
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
                          color : Color(0xFFF9A84D),
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
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        child:
                        Text('Notification', textAlign: TextAlign.left, style: TextStyle(
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
        body: Container(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 8.0,right: 8.0,bottom: 15.0,top: 30.0),
                child: Container(
                  width: 347,
                  height: 105,
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
                      vertical: 18.0,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          height: 40,
                          width: 40,
                          decoration: BoxDecoration(
                              color:Color(0xFF006533),
                              borderRadius: BorderRadius.circular(100)
                          ),
                          child: Icon(Icons.check_sharp,size: 35,
                            color : Colors.white,
                          ),
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Expanded(
                              child:
                              Text('Your order has been taken by the driver',
                                textAlign: TextAlign.left, style: TextStyle(
                                  color: Color.fromRGBO(9, 4, 27, 1),
                                  fontFamily: 'BentonSans Medium',
                                  fontSize: 15,
                                  letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                                  fontWeight: FontWeight.normal,
                                  height: 1.5 /*PERCENT not supported*/
                              ),),
                            ),
                            Expanded(
                              child:       // Figma Flutter Generator WaroenkkitaWidget - TEXT
                              Text('Recently', textAlign: TextAlign.left, style: TextStyle(
                                  color: Color.fromRGBO(59, 59, 59, 1),
                                  fontFamily: 'BentonSansRegular',
                                  fontSize: 14,
                                  letterSpacing: 0.5,
                                  fontWeight: FontWeight.normal,
                                  height: 1
                              ),),
                            ),
                          ],
                        )

                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 8.0,right: 8.0,bottom: 15.0,top: 30.0),
                child: Container(
                  width: 347,
                  height: 105,
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
                      vertical: 18.0,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          height: 40,
                          width: 40,
                          decoration: BoxDecoration(
                              color:Color(0xFFFFBB33),
                              borderRadius: BorderRadius.circular(100)
                          ),
                          child: Icon(Icons.monetization_on_outlined,size: 35,
                            color : Colors.white,
                          ),
                        ),

                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Expanded(
                              child:
                              Text("Topup for \$100 was successful",
                                textAlign: TextAlign.left, style: TextStyle(
                                    color: Color.fromRGBO(9, 4, 27, 1),
                                    fontFamily: 'BentonSans Medium',
                                    fontSize: 15,
                                    letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                                    fontWeight: FontWeight.normal,
                                    height: 1.5 /*PERCENT not supported*/
                                ),),
                            ),
                            Expanded(
                              child:       // Figma Flutter Generator WaroenkkitaWidget - TEXT
                              Text('10.00 Am', textAlign: TextAlign.left, style: TextStyle(
                                  color: Color.fromRGBO(59, 59, 59, 1),
                                  fontFamily: 'BentonSansRegular',
                                  fontSize: 14,
                                  letterSpacing: 0.5,
                                  fontWeight: FontWeight.normal,
                                  height: 1
                              ),),
                            ),
                          ],
                        )

                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 8.0,right: 8.0,bottom: 15.0,top: 30.0),
                child: Container(
                  width: 347,
                  height: 105,
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
                      vertical: 18.0,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          height: 40,
                          width: 40,
                          decoration: BoxDecoration(
                              color:Colors.red,
                              borderRadius: BorderRadius.circular(100)
                          ),
                          child: Icon(Icons.cancel_outlined,size: 35,
                            color : Colors.white,
                          ),
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Expanded(
                              child:
                              Text('Your order has been canceled',
                                textAlign: TextAlign.left, style: TextStyle(
                                    color: Color.fromRGBO(9, 4, 27, 1),
                                    fontFamily: 'BentonSans Medium',
                                    fontSize: 15,
                                    letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                                    fontWeight: FontWeight.normal,
                                    height: 1.5 /*PERCENT not supported*/
                                ),),
                            ),
                            Expanded(
                              child:       // Figma Flutter Generator WaroenkkitaWidget - TEXT
                              Text('22 Juny 2021', textAlign: TextAlign.left, style: TextStyle(
                                  color: Color.fromRGBO(59, 59, 59, 1),
                                  fontFamily: 'BentonSansRegular',
                                  fontSize: 14,
                                  letterSpacing: 0.5,
                                  fontWeight: FontWeight.normal,
                                  height: 1
                              ),),
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
    );
  }
}
