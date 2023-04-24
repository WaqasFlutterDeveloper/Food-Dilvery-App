import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

import '../../Utils/appRoutes.dart';
import '../message/chatting_page.dart';

class TrackOrder extends StatefulWidget {
  const TrackOrder({Key? key}) : super(key: key);

  @override
  State<TrackOrder> createState() => _TrackOrderState();
}

class _TrackOrderState extends State<TrackOrder> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(
          alignment: Alignment.topLeft,
          children: [
            _googleMap(context),
            _bottomCard(context),
            Positioned(
              top: 15,
              left: 10,
              child:Padding(
                padding: const EdgeInsets.only(top: 10.0),
                child: Container(
                    width: 45,
                    height: 45,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.white,
                    ),
                    child: Icon(Icons.arrow_back_ios_new_outlined,
                    size:20,
                      color : Color(0xFFE86D28),
                    )
                ),
              ),

            ),
          ],
        ),
      ),
    );
  }
}




Widget _bottomCard(BuildContext context){
  return Padding(
    padding: const EdgeInsets.only(left: 8.0,right: 8.0,bottom: 15.0),
    child: Align(
      // alignment: Alignment.bottomLeft,
      alignment: AlignmentDirectional.bottomCenter,
      child: Stack(
        alignment: Alignment.bottomRight,
        children: [
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(22),
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Colors.white,
                  // Colors.red.mix(Colors.green, 1-60),
                  Colors.white,
                ],
              ),
            ),
            height: 237,
            width: 342,
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
                // alignment: Alignment.center,
width: MediaQuery.of(context).size.width,
                // width: double.infinity,
                // height: 200,
height: MediaQuery.of(context).size.height,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10.0,right: 0.0,bottom: 15),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 0.0,bottom: 20,right: 10,left: 10),
                  child: Text('Track Orders',
                    style: TextStyle(
                        color: Color(0xFF3B3B3B),
                        fontFamily: 'BentonSansBold',
                        fontSize: 17,
                        letterSpacing: 0.5,
                        fontWeight: FontWeight.normal,
                        height: 1
                    ),),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 0.0,top: 0,bottom: 16),
                  child: Container(
                    height: 87,
                    width: 323,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        colors: [
                          Colors.white,
                          Colors.white,
                        ],
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                      ),
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.white,
                    ),
                    child: Row(
                      children: [
                        Container(
                          margin: EdgeInsets.only(left: 10,right: 20),
                          height: 64,
                          width: 64,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              image: DecorationImage(
                                  image: AssetImage('images/pf.png',),
                                  fit: BoxFit.cover

                              ),
                              borderRadius:  BorderRadius.circular(10)
                          ),
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(bottom: 7.0),
                              child: Text('Mr Kemplas',
                                style: TextStyle(
                                    color: Color(0xFF09051C),
                                    fontFamily: 'BentonSansMedium',
                                    fontSize: 15,
                                    letterSpacing: 0
                                ),
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(
                                  margin: EdgeInsets.only(right: 7,bottom: 3),
                                  width: 15,
                                  height: 15,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(100),
                                    color: Color(0xFF006533),
                                  ),
                                  child: Icon(Icons.directions_outlined,size: 8,color: Colors.white,),
                                ),
                                Text('25 minutes on the way',
                                  style: TextStyle(
                                      color: Color(0xFF3B3B3B),
                                      fontFamily: 'BentonSansRegular',
                                      fontSize: 14,
                                      letterSpacing: 0
                                  ),
                                ),

                              ],
                            ),

                          ],
                        ),

                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                          child: Center(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(Icons.call,size: 18,color: Color(0xFF006533),),
                                SizedBox(width: 7,),

                                Text(
                                  'Call',
                                  textAlign: TextAlign.left,
                                  style: TextStyle(
                                    color: Color(0xFF006533),
                                      fontFamily: 'BentonSansMedium',
                                      fontSize: 14,
                                      letterSpacing:
                                      0 /*percentages not used in flutter. defaulting to zero*/,
                                      fontWeight: FontWeight.normal,
                                      height: 1.0 /*PERCENT not supported*/
                                  ),
                                )
                              ],
                            ),
                          ),
                          width: 247,
                          height: 65,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
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
                      InkWell(
                        onTap: (){
                          AppRoutes.push(context, ChatScreen());
                        },
                        child: Container(
                            child: Center(
                              child: Icon(Icons.email_rounded,color: Colors.white,),
                            ),
                            width: 68,
                            height: 68,
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
                    ],
                  ),
                ),

              ],
            ),
          ),

          // Container(
          //   // margin: EdgeInsets.only(left: 10.0,right: 10.0,top: 0,bottom: 20),
          //   // width: 330,
          //   // height: 175,
          //   child:
          // ),
        ],
      ),
    ),
  );
}

Widget _googleMap(BuildContext context){

  final Completer<GoogleMapController> _controller =
  Completer<GoogleMapController>();

  CameraPosition _kGooglePlex = CameraPosition(
    target: LatLng(37.42796133580664, -122.085749655962),
    zoom: 14.4746,
  );

  CameraPosition _kLake = CameraPosition(
      bearing: 192.8334901395799,
      target: LatLng(37.43296265331129, -122.08832357078792),
      tilt: 59.440717697143555,
      zoom: 15.151926040649414);
  Future<void> _goToTheLake() async {
    final GoogleMapController controller = await _controller.future;
    controller.animateCamera(CameraUpdate.newCameraPosition(_kLake));
  }
  return Container(
    height: MediaQuery.of(context).size.height,
    width: MediaQuery.of(context).size.width,
    child: GoogleMap(
      // mapType: MapType.hybrid,
      mapType: MapType.normal,
      initialCameraPosition: _kGooglePlex,
      onMapCreated: (GoogleMapController controller) {
        _controller.complete(controller);
      },
    ),
  );

}
