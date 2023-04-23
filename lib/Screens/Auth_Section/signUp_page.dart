import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'logIn_page.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  @override
  Widget build(BuildContext context) {
    bool isWinnerTakesAll = true;
    bool _value = true;
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
                    padding: const EdgeInsets.only(
                        left: 8.0, right: 8.0, top: 30, bottom: 50),
                    child: Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                              width: 175,
                              height: 130,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage('images/logo2.png'),
                                    fit: BoxFit.fitWidth),
                              )),
                          Padding(
                            padding: const EdgeInsets.only(left: 4),
                            child: Text(
                              'Deliever Favorite Food',
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                  color: Color.fromRGBO(9, 5, 28, 1),
                                  fontFamily: 'InterSemiBoldItalic',
                                  fontSize: 13,
                                  letterSpacing: 1,
                                  fontWeight: FontWeight.normal,
                                  height: 1),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                                top: 40, left: 8.0, right: 8.0),
                            child: Text(
                              'Sign Up For Free',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  color: Color.fromRGBO(9, 4, 27, 1),
                                  fontFamily: 'BentonSansBold',
                                  fontSize: 20,
                                  letterSpacing:
                                      0 /*percentages not used in flutter. defaulting to zero*/,
                                  fontWeight: FontWeight.normal,
                                  height: 1.5 /*PERCENT not supported*/
                                  ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 30),
                            child: Column(
                              children: [
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
                                        prefixIcon: Grident_Icon(
                                          Icons.person,
                                          Alignment.topCenter,
                                          Color(0xFF9BDABC),
                                          Color(0xFF006533),
                                        ),
                                        hintText: 'Name',
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
                                          hintText: 'Email',
                                          prefixIcon: Grident_Icon(
                                            Icons.email,
                                            Alignment.topCenter,
                                            Color(0xFF006533),
                                            Color(0xFF9BDABC),
                                          ),
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
                                        obscureText: _value,
                                        style: TextStyle(color: Colors.grey),
                                        decoration: InputDecoration(
                                          focusColor: Colors.black,
                                          border: OutlineInputBorder(
                                            borderRadius:
                                                BorderRadius.circular(15.0),
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
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 9.0, top: 12),
                            child: Row(
                              children: [
                                InkWell(
                                  onTap: () {
                                    setState(() {
                                      isWinnerTakesAll = !isWinnerTakesAll;
                                    });
                                  },
                                  child: Container(
                                    height: 22,
                                    width: 22,
                                    decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: isWinnerTakesAll
                                            ? Color(0xFF006533)
                                            : Colors.white,
                                        border: Border.all(
                                            width: 2,
                                            color: Color(0xFF006533))),
                                    child: Padding(
                                        padding: const EdgeInsets.all(3.0),
                                        child: isWinnerTakesAll
                                            ? Icon(
                                                Icons.check,
                                                size: 12.0,
                                                color: Colors.white,
                                              )
                                            : Container()),
                                  ),
                                ),
                                Padding(
                                    padding: const EdgeInsets.only(left: 12.0),
                                    child: Text(
                                      'Keep Me Signed In',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                          color: Color(0xFF006533),
                                          fontFamily: 'BentonSansBook',
                                          fontSize: 12,
                                          letterSpacing:
                                              0 /*percentages not used in flutter. defaulting to zero*/,
                                          fontWeight: FontWeight.normal,
                                          height: 1.5 /*PERCENT not supported*/
                                          ),
                                    )),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 9.0, top: 12),
                            child: Row(
                              children: [
                                InkWell(
                                  onTap: () {
                                    setState(() {
                                      isWinnerTakesAll = !isWinnerTakesAll;
                                    });
                                  },
                                  child: Container(
                                    height: 22,
                                    width: 22,
                                    decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: isWinnerTakesAll
                                            ? Color(0xFF006533)
                                            : Colors.white,
                                        border: Border.all(
                                            width: 2,
                                            color: Color(0xFF006533))),
                                    child: Padding(
                                        padding: const EdgeInsets.all(3.0),
                                        child: isWinnerTakesAll
                                            ? Icon(
                                                Icons.check,
                                                size: 12.0,
                                                color: Colors.white,
                                              )
                                            : Container()),
                                  ),
                                ),

                                // InkWell(
                                //   onTap: (){
                                //     setState(() {
                                //       isWinnerTakesAll = !isWinnerTakesAll;
                                //     });
                                //   },
                                //   child: ClipRRect(
                                //     clipBehavior: Clip.hardEdge,
                                //     borderRadius: BorderRadius.all(Radius.circular(5)),
                                //     child: SizedBox(
                                //       width: Checkbox.width,
                                //       height: Checkbox.width,
                                //       child: Container(
                                //         decoration: new BoxDecoration(
                                //           color: Color(0xFF006533),
                                //           borderRadius: new BorderRadius.circular(100.0),
                                //         ),
                                //         child: Theme(
                                //           data: ThemeData(
                                //             unselectedWidgetColor: Colors.transparent,
                                //           ),
                                //           child:isWinnerTakesAll==true? Checkbox(
                                //             value: isWinnerTakesAll,
                                //             onChanged: (state) =>
                                //                 setState(() => isWinnerTakesAll = !isWinnerTakesAll),
                                //             activeColor: Colors.transparent,
                                //             // checkColor: Colors.white,
                                //             materialTapTargetSize: MaterialTapTargetSize.padded,
                                //           )
                                //               :
                                //           Checkbox(
                                //             value: isWinnerTakesAll,
                                //             onChanged: (state) =>
                                //                 setState(() => isWinnerTakesAll = !isWinnerTakesAll),
                                //             activeColor: Colors.transparent,
                                //             checkColor: Colors.white,
                                //             materialTapTargetSize: MaterialTapTargetSize.padded,
                                //           ),
                                //         ),
                                //       ),
                                //     ),
                                //   ),
                                // ),

                                Padding(
                                    padding: const EdgeInsets.only(left: 12.0),
                                    child: Text(
                                      'Email Me About Special Pricing',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                          color: Color(0xFF006533),
                                          fontFamily: 'BentonSansBook',
                                          fontSize: 12,
                                          letterSpacing:
                                              0 /*percentages not used in flutter. defaulting to zero*/,
                                          fontWeight: FontWeight.normal,
                                          height: 1.5 /*PERCENT not supported*/
                                          ),
                                    )),
                              ],
                            ),
                          ),
                          InkWell(
                            onTap: (){

                            },
                            child: Padding(
                              padding: const EdgeInsets.only(top: 32.0),
                              child: Container(
                                  child: Center(
                                    child: Text(
                                      'Create Account',
                                      textAlign: TextAlign.left,
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontFamily: 'BentonSansBold',
                                          fontSize: 16,
                                          letterSpacing:
                                              0 /*percentages not used in flutter. defaulting to zero*/,
                                          fontWeight: FontWeight.normal,
                                          height: 1.0 /*PERCENT not supported*/
                                          ),
                                    ),
                                  ),
                                  width: 141,
                                  height: 57,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(15),
                                      topRight: Radius.circular(15),
                                      bottomLeft: Radius.circular(15),
                                      bottomRight: Radius.circular(15),
                                    ),
                                    gradient: LinearGradient(
                                        begin: Alignment(0.8459399938583374,
                                            0.1310659646987915),
                                        end: Alignment(-0.1310659646987915,
                                            0.11150387674570084),
                                        colors: [
// 16804B
                                          Color(0xFF006533),
                                          Color(0xFF16804B),
                                        ]),
                                  )),
                            ),
                          ),
                          InkWell(
                            onTap: (){
                              Navigator.pop(context);
                            },
                            child: Padding(
                                padding: const EdgeInsets.all(20.0),
                                child: Text('already have an account?', textAlign: TextAlign.center,
                                  style: TextStyle(
                                    color: Color(0xFF006533),
                                    fontFamily: 'BentonSansMedium',
                                    fontSize: 12,
                                    letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                                    fontWeight: FontWeight.normal,
                                    height: 1.5 /*PERCENT not supported*/
                                ),
                                )
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
