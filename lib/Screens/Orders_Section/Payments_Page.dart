import 'package:flutter/material.dart';
class PaymentsConfirmScreen extends StatefulWidget {
  const PaymentsConfirmScreen({Key? key}) : super(key: key);

  @override
  State<PaymentsConfirmScreen> createState() => _PaymentsConfirmScreenState();
}

class _PaymentsConfirmScreenState extends State<PaymentsConfirmScreen> {
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
                          Text('Confirm Order', textAlign: TextAlign.left, style: TextStyle(
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
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 8.0,right: 8.0,bottom: 8.0,top: 10.0),
                child: Container(
                  width: 335,
                  height: 108,
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
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('Deliver To', textAlign: TextAlign.left, style: TextStyle(
                                color: Color.fromRGBO(59, 59, 59, 1),
                                fontFamily: 'BentonSansRegular',
                                fontSize: 14,
                                letterSpacing: 0.5,
                                fontWeight: FontWeight.normal,
                                height: 1
                            ),),
                            // Figma Flutter Generator EditWidget - TEXT
                            Text('Edit', textAlign: TextAlign.left, style: TextStyle(
                                color: Color(0xFF006533),
                                fontFamily: 'BentonSansRegular',
                                fontSize: 14,
                                letterSpacing: 0.5,
                                fontWeight: FontWeight.normal,
                                height: 1
                            ),)
                          ],
                        ),
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
                              Text('8502 Preston Rd. Inglewood, Maine 98380', textAlign: TextAlign.left, style: TextStyle(
                                  color: Color.fromRGBO(9, 4, 27, 1),
                                  fontFamily: 'BentonSansMedium',
                                  fontSize: 15,
                                  letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                                  fontWeight: FontWeight.normal,
                                  height: 1.5 /*PERCENT not supported*/
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
                padding: const EdgeInsets.only(left: 8.0,right: 8.0,bottom: 0.0,top: 0.0),
                child: Container(
                  width: 335,
                  height: 108,
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
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
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
                              child: Icon(Icons.mobile_screen_share_outlined,size: 21,
                                color : Color(0xFFE86D28),
                              ),
                            ),
                            SizedBox(width: 14,),
                            Expanded(
                              child:       // Figma Flutter Generator AddressWidget - TEXT
                              Text('Payment By Mobile Money', textAlign: TextAlign.left, style: TextStyle(
                                  color: Color.fromRGBO(9, 4, 27, 1),
                                  fontFamily: 'BentonSansMedium',
                                  fontSize: 15,
                                  letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                                  fontWeight: FontWeight.normal,
                                  height: 1.5 /*PERCENT not supported*/
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
                padding: const EdgeInsets.only(left: 8.0,right: 8.0,bottom: 0.0,top: 0.0),
                child: Container(
                  width: 335,
                  height: 108,
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
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
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
                              child: Icon(Icons.money_outlined,size: 21,
                                color : Color(0xFFE86D28),
                              ),
                            ),
                            SizedBox(width: 14,),
                            Expanded(
                              child:       // Figma Flutter Generator AddressWidget - TEXT
                              Text('Payment By Cash', textAlign: TextAlign.left, style: TextStyle(
                                  color: Color.fromRGBO(9, 4, 27, 1),
                                  fontFamily: 'BentonSansMedium',
                                  fontSize: 15,
                                  letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                                  fontWeight: FontWeight.normal,
                                  height: 1.5 /*PERCENT not supported*/
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
                padding: const EdgeInsets.only(bottom: 0.0,left: 4.0,right: 4.0,top: 0),
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
