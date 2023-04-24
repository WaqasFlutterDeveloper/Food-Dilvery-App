import 'package:flutter/material.dart';
class Edit_Location extends StatelessWidget {
  const Edit_Location({Key? key}) : super(key: key);

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
                        Text('Shipping', textAlign: TextAlign.left, style: TextStyle(
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
                  width: 335,
                  height: 107,
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
                            // Figma Flutter Generator OrderlocationWidget - TEXT
                            Text('Order Location', textAlign: TextAlign.left, style: TextStyle(
                                color: Color.fromRGBO(59, 59, 59, 1),
                                fontFamily: 'BentonSansRegular',
                                fontSize: 14,
                                letterSpacing: 0.5,
                                fontWeight: FontWeight.normal,
                                height: 1
                            ),),
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
                padding: const EdgeInsets.only(left: 8.0,right: 8.0,bottom: 0.0,top: 30.0),
                child: Container(
                  width: 335,
                  height: 141,
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
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            // Figma Flutter Generator OrderlocationWidget - TEXT
                            // Figma Flutter Generator DelivertoWidget - TEXT
                            Text('Deliver To', textAlign: TextAlign.left, style: TextStyle(
                                color: Color.fromRGBO(59, 59, 59, 1),
                                fontFamily: 'BentonSansRegular',
                                fontSize: 14,
                                letterSpacing: 0.5,
                                fontWeight: FontWeight.normal,
                                height: 1
                            ),),
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
                              Text('4517 Washington Ave. Manchester, Kentucky 39495', textAlign: TextAlign.left, style: TextStyle(
                                  color: Color.fromRGBO(9, 4, 27, 1),
                                  fontFamily: 'BentonSansMedium',
                                  fontSize: 15,
                                  letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                                  fontWeight: FontWeight.normal,
                                  height: 1.5 /*PERCENT not supported*/
                              ),),
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 15.0,left: 48),
                          child: Text('set location', textAlign: TextAlign.left, style: TextStyle(
                              color: Color(0xFF006533),
                              fontFamily: 'BentonSans Regular',
                              fontSize: 14,
                              letterSpacing: 0.5,
                              fontWeight: FontWeight.normal,
                              height: 1
                          ),),
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
