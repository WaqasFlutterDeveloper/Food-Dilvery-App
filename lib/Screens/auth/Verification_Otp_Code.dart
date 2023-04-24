import 'package:flutter/material.dart';
import 'package:otp_text_field/otp_text_field.dart';
import 'package:otp_text_field/style.dart';

import '../../Utils/appRoutes.dart';
import 'logIn_page.dart';

class VerificationOtpCodeScreen extends StatefulWidget {
  const VerificationOtpCodeScreen({Key? key}) : super(key: key);

  @override
  State<VerificationOtpCodeScreen> createState() => _VerificationOtpCodeScreenState();
}

class _VerificationOtpCodeScreenState extends State<VerificationOtpCodeScreen> {
  String otpCode = '';
  OtpFieldController otpController = OtpFieldController();
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
                              Text('Enter 4-digit',
                                textAlign: TextAlign.left, style: TextStyle(
                                  color: Color.fromRGBO(9, 4, 27, 1),
                                  fontFamily: 'BentonSansBold',
                                  fontSize: 25,
                                  letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                                  fontWeight: FontWeight.normal,
                                  height: 1.5 /*PERCENT not supported*/
                              ),),
                              Text('Verification code', textAlign: TextAlign.left, style: TextStyle(
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
                  children: [
                   Padding(
                     padding: const EdgeInsets.only(left: 8.0,right: 8.0,bottom: 50),
                     child: Column(
                       mainAxisAlignment: MainAxisAlignment.start,
                       crossAxisAlignment: CrossAxisAlignment.start,
                       children: [
                         Padding(
                           padding: const EdgeInsets.only(bottom: 15.0),
                           child: Column(
                             children: [
                               Text(
                                 'Code send to your email.',
                                 textAlign: TextAlign.left,
                                 style: TextStyle(
                                     color: Color.fromRGBO(0, 0, 0, 1),
                                     fontFamily: 'BentonSansBook',
                                     fontSize: 12,
                                     letterSpacing:
                                     0 /*percentages not used in flutter. defaulting to zero*/,
                                     fontWeight: FontWeight.normal,
                                     height: 1.5 /*PERCENT not supported*/
                                 ),
                               ),
                             ],
                           ),
                         ),
                         Padding(
                           padding: const EdgeInsets.symmetric(vertical: 28.0),
                           child: OTPTextField(
                               controller: otpController,
                               length: 6,
                               width: MediaQuery.of(context).size.width-34,
                               otpFieldStyle: OtpFieldStyle(
                                 backgroundColor: Colors.white,
                               ),
                               textFieldAlignment: MainAxisAlignment.spaceAround,
                               fieldWidth: 45,
                               fieldStyle: FieldStyle.box,
                               outlineBorderRadius: 15,
                               style: TextStyle(fontSize: 17),
                               onChanged: (pin) {
                                 print("Changed: " + pin);
                               },
                               onCompleted: (pin) {
                                 print("Completed: " + pin);
                                 otpCode =pin;
                               }),
                         ),
                       ],
                     ),
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
                        child: InkWell(
                          onTap: (){
                            AppRoutes.push(context, LoginScreen());
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

