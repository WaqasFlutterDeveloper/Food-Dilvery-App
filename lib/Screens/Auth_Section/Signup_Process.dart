import 'package:flutter/material.dart';
class SignupProcessScreen extends StatelessWidget {
  const SignupProcessScreen({Key? key}) : super(key: key);

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
                        child:  Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Fill in your bio to get', textAlign: TextAlign.left, style: TextStyle(
                                color: Color.fromRGBO(9, 4, 27, 1),
                                fontFamily: 'BentonSansBold',
                                fontSize: 25,
                                letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                                fontWeight: FontWeight.normal,
                                height: 1.5 /*PERCENT not supported*/
                            ),),
                            Text('started', textAlign: TextAlign.left, style: TextStyle(
                                color: Color.fromRGBO(9, 4, 27, 1),
                                fontFamily: 'BentonSansBold',
                                fontSize: 25,
                                letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                                fontWeight: FontWeight.normal,
                                height: 1.5 /*PERCENT not supported*/
                            ),),
                          ],
                        )
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 10,left: 10,right: 10),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  // crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                   Column(
                     mainAxisAlignment: MainAxisAlignment.start,
                     crossAxisAlignment: CrossAxisAlignment.start,
                     children: [
                       Padding(
                         padding: const EdgeInsets.only(bottom: 15.0),
                         child: Column(
                           mainAxisAlignment: MainAxisAlignment.start,
                           crossAxisAlignment: CrossAxisAlignment.start,
                           children: [
                             Text('This data will be displayed in your account',
                               textAlign: TextAlign.left, style: TextStyle(
                                   color: Color.fromRGBO(0, 0, 0, 1),
                                   fontFamily: 'BentonSansBook',
                                   fontSize: 12,
                                   letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                                   fontWeight: FontWeight.normal,
                                   height: 1.5 /*PERCENT not supported*/
                               ),),
                             Text('profile for security',
                               textAlign: TextAlign.left, style: TextStyle(
                                   color: Color.fromRGBO(0, 0, 0, 1),
                                   fontFamily: 'BentonSansBook',
                                   fontSize: 12,
                                   letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                                   fontWeight: FontWeight.normal,
                                   height: 1.5 /*PERCENT not supported*/
                               ),),
                           ],
                         ),
                       ),
                       Container(
                           width: 325,
                           height: 57,
                           decoration: BoxDecoration(
                             borderRadius: BorderRadius.circular(30),
// color: textFiledColorLogin,
                           ),
                           child: TextFormField(
                             style: TextStyle(color: Colors.grey),
                             decoration: InputDecoration(
                               border: OutlineInputBorder(
                                 borderRadius:
                                 BorderRadius.circular(15.0),
                               ),
                               hintText: 'First Name',
                               hintStyle: TextStyle(
                                   color:
                                   Color.fromRGBO(59, 59, 59, 1),
                                   fontFamily: 'BentonSansRegular',
                                   fontSize: 14,
                                   letterSpacing: 0.5,
                                   fontWeight: FontWeight.normal,
                                   height: 1),
                             ),
                           )),
                       Padding(
                         padding: const EdgeInsets.only(top: 15.0),
                         child: Container(
                             width: 325,
                             height: 57,
                             decoration: BoxDecoration(
                               borderRadius: BorderRadius.circular(30),
// color: textFiledColorLogin,
                             ),
                             child: TextFormField(
                               style: TextStyle(color: Colors.grey),
                               decoration: InputDecoration(
                                 border: OutlineInputBorder(
                                   borderRadius:
                                   BorderRadius.circular(15.0),
                                 ),
                                 hintText: 'First Name',
                                 hintStyle: TextStyle(
                                     color:
                                     Color.fromRGBO(59, 59, 59, 1),
                                     fontFamily: 'BentonSansRegular',
                                     fontSize: 14,
                                     letterSpacing: 0.5,
                                     fontWeight: FontWeight.normal,
                                     height: 1),
                               ),
                             )),
                       ),
                       Padding(
                         padding: const EdgeInsets.only(top: 15.0),
                         child: Container(
                             width: 325,
                             height: 57,
                             decoration: BoxDecoration(
                               borderRadius: BorderRadius.circular(30),
// color: textFiledColorLogin,
                             ),
                             child: TextFormField(
                               style: TextStyle(color: Colors.grey),
                               decoration: InputDecoration(
                                 focusColor: Colors.black,
                                 border: OutlineInputBorder(
                                   borderRadius:
                                   BorderRadius.circular(15.0),
                                 ),
                                 hintText: 'Mobile Number',
                                 hintStyle: TextStyle(
                                     color:
                                     Color.fromRGBO(59, 59, 59, 1),
                                     fontFamily: 'BentonSansRegular',
                                     fontSize: 14,
                                     letterSpacing: 0.5,
                                     fontWeight: FontWeight.normal,
                                     height: 1),
                               ),
                             )),
                       ),
                     ],
                   ),
                    Padding(
                      padding: const EdgeInsets.only(top: 40.0),
                      child: InkWell(
                        onTap: (){
                          // Navigator.push(
                          //   context,
                          //   MaterialPageRoute(builder: (context) => SignUpScreen()),
                          // );
                        },
                        child: Container(
                          margin: EdgeInsets.only(top: 50.0),
                            child: Center(
                              child: Text('Next', textAlign: TextAlign.left, style: TextStyle(
                                  color: Colors.white,
                                  fontFamily: 'BentonSansBold',
                                  fontSize: 16,
                                  letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                                  fontWeight: FontWeight.normal,
                                  height: 1.0 /*PERCENT not supported*/
                              ),),
                            ),
                            width: 141,
                            height: 57,
                            decoration: BoxDecoration(
                              borderRadius : BorderRadius.only(
                                topLeft: Radius.circular(15),
                                topRight: Radius.circular(15),
                                bottomLeft: Radius.circular(15),
                                bottomRight: Radius.circular(15),
                              ),
                              gradient : LinearGradient(
                                  begin: Alignment(0.8459399938583374,0.1310659646987915),
                                  end: Alignment(-0.1310659646987915,0.11150387674570084),
                                  colors: [
// 16804B
                                    Color(0xFF006533),
                                    Color(0xFF16804B),

                                  ]
                              ),
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
    );
  }
}
