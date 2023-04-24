import 'package:coucou_express/Screens/auth/signUp_page.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter/material.dart';

import '../../Utils/appRoutes.dart';
import '../home/Home.dart';
import 'Forget_Password.dart';


class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool _value = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Stack(
          children: <Widget>[
            Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    Colors.white,
                    // Colors.red.mix(Colors.green, 1-60),
                    Colors.white,
                  ],
                  // stops: [
                  //   1.0,
                  //   1.0,
                  //   1.0,
                  // ],
                ),
              ),
              height: 278,
              width: double.infinity,
              child: ShaderMask(
                shaderCallback: (Rect bounds) {
                  return LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      // Colors.green.shade50,
                      Color(0xFFAFDFC7),
                      // Colors.red.mix(Colors.green, 1-60),
                      Colors.white,
                    ],
                    // stops: [
                    // 1.0,
                    // 1.0,
                    // 1.0,
                    // ],
                  ).createShader(bounds);
                },
                blendMode: BlendMode.srcIn,
                child: SvgPicture.asset(
                  'images/bg1.svg',
                  alignment: Alignment.center,
// width: MediaQuery.of(context).size.width,
                  width: double.infinity,
                  height: 170,
// height: MediaQuery.of(context).size.height,
                ),
              ),
            ),

            Container(
              child: Column(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(left: 8.0,right: 8.0,top: 30,bottom: 50),
                    child: Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [

                          Container(
                              width: 175,
                              height: 130,
                              decoration: BoxDecoration(
                                image : DecorationImage(
                                    image: AssetImage('images/logo2.png'),
                                    fit: BoxFit.fitWidth
                                ),
                              )
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 4),
                            child: Text('Deliever Favorite Food', textAlign: TextAlign.left, style: TextStyle(
                                color: Color.fromRGBO(9, 5, 28, 1),
                                fontFamily: 'InterSemiBoldItalic',
                                fontSize: 13,
                                letterSpacing: 1,
                                fontWeight: FontWeight.normal,
                                height: 1
                            ),),
                          ),

                          Padding(
                            padding: const EdgeInsets.only(top: 40,left: 8.0,right: 8.0),
                            child: Text('Login To Your Account', textAlign: TextAlign.center, style: TextStyle(
                                color: Color.fromRGBO(9, 4, 27, 1),
                                fontFamily: 'BentonSansBold',
                                fontSize: 20,
                                letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                                fontWeight: FontWeight.normal,
                                height: 1.5 /*PERCENT not supported*/
                            ),),
                          ),

                          Padding(
                            padding: const EdgeInsets.only(top: 30),
                            child: Column(
                              children: [
                                Container(
                                    width: 325,
                                    height: 57,
// margin: EdgeInsets.all(15),
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(30),
// color: textFiledColorLogin,
                                    ),
                                    child: TextFormField(
                                      style: TextStyle(color: Colors.grey),
                                      decoration: InputDecoration(
                                        border: OutlineInputBorder(
                                          borderRadius: BorderRadius.circular(15.0),
// borderSide:  BorderSide(),

                                        ),
                                        prefixIcon: Grident_Icon(
                                          Icons.email,
                                          Alignment.topCenter,
                                          Color(0xFF006533),
                                          Color(0xFF9BDABC),
                                        ),
                                        hintText: 'Email',
                                        hintStyle: TextStyle(
                                            color: Color.fromRGBO(59, 59, 59, 1),
                                            fontFamily: 'BentonSansRegular',
                                            fontSize: 14,
                                            letterSpacing: 0.5,
                                            fontWeight: FontWeight.normal,
                                            height: 1
                                        ),
                                      ),
                                    )),
                                SizedBox(height: 15,),
                                Container(
                                    width: 325,
                                    height: 57,
// margin: EdgeInsets.all(15),
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(30),
// color: textFiledColorLogin,
                                    ),
                                    child: TextFormField(
                                      obscureText: _value,
// scrollPadding: EdgeInsets.symmetric(vertical: 10,horizontal: 10),
                                      style: TextStyle(color: Colors.grey),
                                      decoration: InputDecoration(
                                        border: OutlineInputBorder(
                                          borderRadius: BorderRadius.circular(15.0),
// borderSide:  BorderSide(),

                                        ),
                                        prefixIcon: Grident_Icon(
                                          Icons.lock,
                                          Alignment.topCenter,
                                          Color(0xFF9BDABC),
                                          Color(0xFF006533),
                                        ),
                                        hintText: 'Password',
                                        suffixIcon: IconButton(
                                            onPressed: () {
                                              setState(() {
                                                _value = !_value;
                                                print(_value);
                                              });
                                            },
                                            icon:Icon(
                                              _value
                                                  ? Icons.visibility_off
                                                  : Icons.visibility,
                                              // color: Theme.of(context).primaryColorDark,
                                            )
                                          // Icons.remove_red_eye_outlined,
                                          // Icon(Icons.visibility_off_outlined),
                                        ),
                                        hintStyle: TextStyle(
                                            color: Color.fromRGBO(59, 59, 59, 1),
                                            fontFamily: 'BentonSansRegular',
                                            fontSize: 14,
                                            letterSpacing: 0.5,
                                            fontWeight: FontWeight.normal,
                                            height: 1
                                        ),
                                      ),
                                    )),
                              ],
                            ),
                          ),

                          InkWell(
                            onTap: (){
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => SignUpScreen()),
                              );
                            },
                            child: Padding(
                              padding: const EdgeInsets.fromLTRB(8.0, 15, 8.0, 0.0),
                              child: Text('Or Continue With Email', textAlign: TextAlign.center, style: TextStyle(
                                  color: Color.fromRGBO(9, 5, 28, 1),
                                  fontFamily: 'BentonSansBold',
                                  fontSize: 12,
                                  letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                                  fontWeight: FontWeight.normal,
                                  height: 1.5 /*PERCENT not supported*/
                              ),),
                            ),
                          ),

                          Padding(
                            padding: const EdgeInsets.only(top: 25,left: 8,right: 8,bottom: 10),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    Container(
                                        width: 152,
                                        height: 57,
                                        child: Padding(
                                          padding: const EdgeInsets.only(top: 0.0,bottom: 0.0,left: 20,right: 20),
                                          child: Row(
                                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                            children: [
                                              SvgPicture.asset(
                                                'images/facebook.svg',
                                                semanticsLabel: 'vector',
                                                width: 25,
                                                height: 25,
                                              ),
                                              Text('Facebook', textAlign: TextAlign.left, style: TextStyle(
                                                  color: Color.fromRGBO(9, 5, 28, 1),
                                                  fontFamily: 'BentonSansMedium',
                                                  fontSize: 14,
                                                  letterSpacing: 0.5,
                                                  fontWeight: FontWeight.normal,
                                                  height: 1
                                              ),),
                                            ],
                                          ),
                                        ),
// width: 152,
// height: 57,
                                        decoration: BoxDecoration(
                                          borderRadius : BorderRadius.only(
                                            topLeft: Radius.circular(15),
                                            topRight: Radius.circular(15),
                                            bottomLeft: Radius.circular(15),
                                            bottomRight: Radius.circular(15),
                                          ),
                                          boxShadow : [BoxShadow(
                                              color: Color.fromRGBO(90, 108, 234, 0.07000000029802322),
                                              offset: Offset(12,26),
                                              blurRadius: 50
                                          )],
                                          color : Color.fromRGBO(255, 255, 255, 1),
                                          border : Border.all(
                                            color: Color.fromRGBO(244, 244, 244, 1),
                                            width: 1,
                                          ),
                                        )
                                    )
                                  ],
                                ),
                                Row(
                                  children: [
                                    Container(
                                        width: 152,
                                        height: 57,
                                        child: Padding(
                                          padding: const EdgeInsets.only(top: 0.0,bottom: 0.0,left: 20,right: 20),
                                          child: Row(
                                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                            children: [
                                              SvgPicture.asset(
                                                'images/google.svg',
                                                semanticsLabel: 'vector',
                                                width: 25,
                                                height: 25,
                                              ),
                                              Text('Google', textAlign: TextAlign.left, style: TextStyle(
                                                  color: Color.fromRGBO(9, 5, 28, 1),
                                                  fontFamily: 'BentonSansMedium',
                                                  fontSize: 14,
                                                  letterSpacing: 0.5,
                                                  fontWeight: FontWeight.normal,
                                                  height: 1
                                              ),),
                                            ],
                                          ),
                                        ),
// width: 152,
// height: 57,
                                        decoration: BoxDecoration(
                                          borderRadius : BorderRadius.only(
                                            topLeft: Radius.circular(15),
                                            topRight: Radius.circular(15),
                                            bottomLeft: Radius.circular(15),
                                            bottomRight: Radius.circular(15),
                                          ),
                                          boxShadow : [BoxShadow(
                                              color: Color.fromRGBO(90, 108, 234, 0.07000000029802322),
                                              offset: Offset(12,26),
                                              blurRadius: 50
                                          )],
                                          color : Color.fromRGBO(255, 255, 255, 1),
                                          border : Border.all(
                                            color: Color.fromRGBO(244, 244, 244, 1),
                                            width: 1,
                                          ),
                                        )
                                    )
                                  ],
                                ),

                              ],
                            ),
                          ),

                          Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: InkWell(
                                onTap: (){
                                  AppRoutes.push(context, ForgetPasswordScreen ());
                                },
                                child: Text('Forgot Your Password?', textAlign: TextAlign.center, style: TextStyle(
                                    color: Color(0xFF006533),
                                    fontFamily: 'BentonSansMedium',
                                    fontSize: 12,
                                    letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                                    fontWeight: FontWeight.normal,
                                    height: 1.5 /*PERCENT not supported*/
                                ),),
                              )
                          ),

                          Padding(
                            padding: const EdgeInsets.only(top: 26.0),
                            child: InkWell(
                              onTap: (){
                                AppRoutes.replace(context, const HomePage());
                              },
                              child: Container(
                                  child: Center(
                                    child: Text('Login', textAlign: TextAlign.left, style: TextStyle(
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
                  ),

                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
  ShaderMask Grident_Icon(
      IconData icon, Alignment alignment, Color topColor, Color bottomColor) {
    return ShaderMask(
      blendMode: BlendMode.srcIn,
      shaderCallback: (Rect bounds) => RadialGradient(
        center: alignment,
        stops: [1.0, 10],
        colors: [
          topColor,
          bottomColor,
        ],
      ).createShader(bounds),
      child: Icon(
        icon,
        size: 22,
      ),
    );
  }
}
