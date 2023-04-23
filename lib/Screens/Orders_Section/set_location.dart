import 'dart:async';

import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
class SetLocationScreen extends StatefulWidget {
  const SetLocationScreen({Key? key}) : super(key: key);

  @override
  State<SetLocationScreen> createState() => _SetLocationScreenState();
}

class _SetLocationScreenState extends State<SetLocationScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            _googleMap(context),
            _bottomCard(),
            Positioned(
              top: 15,
              left: 10,
              right: 10,
                child:Padding(
                  padding: const EdgeInsets.only(top: 15.0),
                  child: Container(
                      width: 325,
                      height: 57,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(22),
color: Colors.white,
                      ),
                      child: TextFormField(
                        // style: TextStyle(color: Colors.grey),
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius:
                            BorderRadius.circular(22.0),
                          ),
                          hintText: 'FInd Your Location',
                          hintStyle: TextStyle(
                            fontSize: 12,
                            color: Color.fromRGBO(218, 99, 23, 1),
                            fontFamily: 'Roboto',
                            letterSpacing: 0.5,
                            fontWeight: FontWeight.normal,
                            height: 1
                        ),
                          prefixIcon:
                            Icon(Icons.search,
                              size: 27,
                                color : Color(0xFFDA6317),),
                          ),
                          // hintStyle: TextStyle(
                          //     color:
                          //     Color.fromRGBO(59, 59, 59, 1),
                          //     fontFamily: 'BentonSansRegular',
                          //     fontSize: 14,
                          //     letterSpacing: 0.5,
                          //     fontWeight: FontWeight.normal,
                          //     height: 1
                          //   ),
                        // ),
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


Widget _bottomCard(){
  return Align(
    // alignment: Alignment.bottomLeft,
    alignment: AlignmentDirectional.bottomCenter,
    child: Container(
      margin: EdgeInsets.all(10.0),
      width: 335,
      height: 175,
      decoration: BoxDecoration(
        borderRadius : BorderRadius.all(Radius.circular(22.0)),
        boxShadow : [BoxShadow(
            color: Color.fromRGBO(90, 108, 234, 0.07000000029802322),
            offset: Offset(12,26),
            blurRadius: 50
        )],
        color : Color.fromRGBO(255, 255, 255, 1),
      ),
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Padding(
            //   padding: const EdgeInsets.all(8.0),
            //   child: Icon(Icons.search,size: 27,
            //     color : Color(0xFFDA6317),
            //   ),
            // ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text('Your Location',
              style: TextStyle(
                  color: Color(0xFF3B3B3B),
                  fontFamily: 'BentonSansRegula',
                  fontSize: 14,
                  letterSpacing: 0.5,
                  fontWeight: FontWeight.normal,
                  height: 1
              ),),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 8.0,top: 10),
              child: Row(
                children: [
                  // CircleAvatar(
                  //   backgroundColor: Color(0xFFF8D52B),
                  //   radius: 16,
                  //   child: Icon(Icons.location_on_outlined,
                  //     size: 21,
                  //     color : Color(0xFFDA6317),
                  //   ),
                  // ),
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
                    child: Text('4517 Washington Ave. Manchester, Kentucky 39495',
                      style: TextStyle(
                          color: Color(0xFF09051C),
                          fontFamily: 'BentonSansMedium',
                          fontSize: 15,
                          letterSpacing: 0
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 25.0,left: 8.0),
              child: Container(
                  child: Center(
                    child: Text(
                      'Set Location',
                      textAlign: TextAlign.left,
                      style: TextStyle(
                          color: Colors.white,
                          fontFamily: 'BentonSansBold',
                          fontSize: 14,
                          letterSpacing:
                          0 /*percentages not used in flutter. defaulting to zero*/,
                          fontWeight: FontWeight.normal,
                          height: 1.0 /*PERCENT not supported*/
                      ),
                    ),
                  ),
                  width: 322,
                  height: 52,
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

// Container(
// width: 340,
// height: 65,
// decoration: BoxDecoration(
// borderRadius : BorderRadius.all(Radius.circular(22.0)),
// boxShadow : [BoxShadow(
// color: Color.fromRGBO(90, 108, 234, 0.07000000029802322),
// offset: Offset(12,26),
// blurRadius: 50
// )],
// color : Color.fromRGBO(255, 255, 255, 1),
// ),
// child: Padding(
// padding: const EdgeInsets.all(10.0),
// child: Row(
// children: [
// Padding(
// padding: const EdgeInsets.all(8.0),
// child: Icon(Icons.search,size: 27,
// color : Color(0xFFDA6317),
// ),
// ),
// Padding(
// padding: const EdgeInsets.all(8.0),
// child:
// Text('Find Your Location',
// style: TextStyle(
// fontSize: 12,
// color: Color.fromRGBO(218, 99, 23, 1),
// fontFamily: 'Roboto',
// letterSpacing: 0.5,
// fontWeight: FontWeight.normal,
// height: 1
// ),
// ),
// )
// ],
// ),
// ),
// ),