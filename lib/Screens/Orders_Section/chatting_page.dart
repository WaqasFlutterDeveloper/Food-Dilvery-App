import 'package:flutter/material.dart';
import 'package:coucou_express/Screens/Auth_Section/signUp_page.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_svg/flutter_svg.dart';
class ChattingScreen extends StatefulWidget {
  const ChattingScreen({Key? key}) : super(key: key);

  @override
  State<ChattingScreen> createState() => _ChattingScreenState();
}

class _ChattingScreenState extends State<ChattingScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Stack(
              children: [
                Positioned(
                  top: 0,
                  bottom: 350,
                  child: Container(
                    // width: 375,
                    // height: 812,
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
                    // height: 278,
                    // width: double.infinity,
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
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

}








class ChatScreen extends StatefulWidget {
  const ChatScreen({Key? key}) : super(key: key);

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          bottomOpacity: 0.0,
          elevation: 0.0,
          toolbarHeight: 200,
          centerTitle: true,
          flexibleSpace: Container(
            height: 200,
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
                    opacity: .2
                ),
                color: Colors.white70
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                  padding: const EdgeInsets.only(left: 10.0,top: 0,),
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
                Padding(
                  padding: const EdgeInsets.only(left: 10.0,right: 10,bottom: 8),
                  child: Container(
                    width: 347,
                    height: 93,
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
                      children: [
                        Container(
                            margin: EdgeInsets.only(top: 10,left: 10,bottom: 10,right: 0),
                            width: 62,
                            height: 62,
                            decoration: BoxDecoration(
                              borderRadius : BorderRadius.circular(16),
                              image : DecorationImage(
                                  image: AssetImage('images/pf2.png',),
                                  fit: BoxFit.cover
                              ),
                            )
                        ),

                        Padding(
                          padding: const EdgeInsets.only(left: 8.0,right: 38.0,bottom: 15),
                          child: Container(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('Dianne Russell',
                                  textAlign: TextAlign.left, style: TextStyle(
                                      color: Color.fromRGBO(9, 4, 27, 1),
                                      fontFamily: 'BentonSansMedium',
                                      fontSize: 15,
                                      letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                                      fontWeight: FontWeight.normal,
                                      height: 1.5 /*PERCENT not supported*/
                                  ),),
                                Padding(
                                  padding: const EdgeInsets.only(top: 5,left: 5),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Container(
                                        height: 6,
                                        width: 6,
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(100),
                                          color:Color(0xFF006533),
                                        ),
                                      ),
                                      SizedBox(width: 3,),
                                      Text('Online', textAlign: TextAlign.left, style: TextStyle(
                                          color: Color.fromRGBO(59, 59, 59, 1),
                                          fontFamily: 'BentonSansRegular',
                                          fontSize: 14,
                                          letterSpacing: 0.5,
                                          fontWeight: FontWeight.normal,
                                          height: 1
                                      ),),
                                    ],),
                                )
                              ],
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 30,vertical: 15
                          ),
                          child: Container(
                              width: 40,
                              height: 40,
                              decoration: BoxDecoration(
                                gradient : LinearGradient(
                                    begin: Alignment(0.8459399938583374,0.1310659646987915),
                                    end: Alignment(-0.1310659646987915,0.11150387674570084),
                                    colors: [
                                      Color(0xFF9BDABC),
                                      Color(0xFF9BDABC),
                                    ]
                                ),
                                borderRadius : BorderRadius.all(Radius.elliptical(40, 40)),
                              ),
                              child: Icon(Icons.call,color: Color(0xFF006533),)
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
        body:  Container(
          child: Column(
              children: [
                Expanded(
                  child: Container(
                    // color: Colors.white,
                    child: SingleChildScrollView(
                      child: Column(
                        children: [

                          Padding(
                            padding: const EdgeInsets.only(top: 18.0,bottom: 20),
                            child: Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Row(
                                    children: [
                                      Container(
                                        width:129,
                                        height: 41,
                                        decoration: BoxDecoration(
                                          color: Color(0xFFF6F6F6),
                                          borderRadius: BorderRadius.circular(13)
                                        ),
                                        child: Center(child: Text('Just to order')),
                                      ),
                                    ],
                                  ),
                                ),

                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      Container(
                                        width:265,
                                        height: 41,
                                        decoration: BoxDecoration(
                                            color:Color(0xFF006533),
                                          borderRadius: BorderRadius.circular(13)
                                        ),
                                        child: Center(child: Text("okay , for what level of spiciness?"
                                          ,style: TextStyle(
                                          color: Colors.white
                                        ),)),
                                      ),
                                    ],
                                  ),
                                ),

                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Row(
                                    children: [
                                      Container(
                                        width:129,
                                        height: 41,
                                        decoration: BoxDecoration(
                                            color: Color(0xFFF6F6F6),
                                          borderRadius: BorderRadius.circular(13)
                                        ),
                                        child: Center(child: Text("okay , wait a minute")),
                                      ),
                                    ],
                                  ),
                                ),

                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      Container(
                                        width:265,
                                        height: 41,
                                        decoration: BoxDecoration(
                                            color:Color(0xFF006533),
                                            // color:Color(0xFF006533),
                                          borderRadius: BorderRadius.circular(13)
                                        ),
                                        child: Center(child: Text("okay I'm waiting",
                                            style: TextStyle(
                                            color: Colors.white
                                        ))),
                                      ),
                                    ],
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
                Container(
                  decoration: BoxDecoration(
                      color: Colors.grey[200],
                    borderRadius: BorderRadius.circular(22),
                  ),

                  padding: EdgeInsets.symmetric(
                    horizontal: 15,
                    vertical: 5,
                  ),
                  child: Row(
                    children: [
                      Flexible(
                        child: TextField(
                          decoration: InputDecoration(
                              border: InputBorder.none,
                            hintText: 'Write Message Here'
                          ),
                        ),
                      ),
                      IconButton(onPressed: (){

                      },
                          icon: Icon(Icons.send,)),
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
