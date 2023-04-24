import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:image_picker/image_picker.dart';

import '../../Utils/appRoutes.dart';
import 'Set_Location.dart';

class UploadPhotoScreen extends StatefulWidget {
  const UploadPhotoScreen({Key? key}) : super(key: key);

  @override
  State<UploadPhotoScreen> createState() => _UploadPhotoScreenState();
}

class _UploadPhotoScreenState extends State<UploadPhotoScreen> {
  File? pickedImage;
  final picker = ImagePicker();
  bool term = false;
  dynamic pickImageError;
  bool loading = false;
  void _pickImageCamera() async {
    try {
      final pickedImg = await picker.pickImage(source: ImageSource.camera);
      final pickedImgFile = File(pickedImg!.path);
      setState(() {
        if (mounted) {
          setState(() {
            pickedImage = pickedImgFile;
          });
        }
      });
    } catch (e) {
      setState(() {
        pickImageError = e;
      });
    }
  }

  void _pickImageGallery() async {
    try {
      final pickedImg = await picker.pickImage(source: ImageSource.gallery);
      final pickedImageFile = File(pickedImg!.path);
      setState(() {
        if (!mounted) return;
        pickedImage = pickedImageFile;
      });
    } catch (e) {
      setState(() {
        pickImageError = e;
      });
    }
  }

  void _showPicker() {
    showModalBottomSheet(
        context: context,
        builder: (BuildContext bc) {
          return SafeArea(
            child: Wrap(
              children: <Widget>[
                ListTile(
                    leading: const Icon(Icons.photo_library),
                    title: const Text('Gallery'),
                    onTap: () {
                      _pickImageGallery();
                      Navigator.of(context).pop();
                    }),
                ListTile(
                  leading: const Icon(Icons.photo_camera),
                  title: const Text('Camera'),
                  onTap: () {
                    _pickImageCamera();
                    Navigator.of(context).pop();
                  },
                ),
              ],
            ),
          );
        });
  }
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
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
                  colors: <Color>[Colors.white, Colors.white],
                ),
                image: DecorationImage(
                    image: AssetImage(
                      'images/final.png',
                    ),
                    fit: BoxFit.cover,
                    opacity: .1),
                color: Colors.white70),
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
                          borderRadius: BorderRadius.circular(15),
                          color: Color.fromRGBO(249, 168, 77, 1),
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
                  padding: const EdgeInsets.only(
                    left: 10.0,
                    top: 25,
                  ),
                  child: Row(
                    children: [
                      Container(
                          child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Upload Your Photo',
                            textAlign: TextAlign.left,
                            style: TextStyle(
                                color: Color.fromRGBO(9, 4, 27, 1),
                                fontFamily: 'BentonSansBold',
                                fontSize: 25,
                                letterSpacing:
                                    0 /*percentages not used in flutter. defaulting to zero*/,
                                fontWeight: FontWeight.normal,
                                height: 1.5 /*PERCENT not supported*/
                                ),
                          ),
                          Text(
                            'Profile',
                            textAlign: TextAlign.left,
                            style: TextStyle(
                                color: Color.fromRGBO(9, 4, 27, 1),
                                fontFamily: 'BentonSansBold',
                                fontSize: 25,
                                letterSpacing:
                                    0 /*percentages not used in flutter. defaulting to zero*/,
                                fontWeight: FontWeight.normal,
                                height: 1.5 /*PERCENT not supported*/
                                ),
                          ),
                        ],
                      )),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 10, left: 0, right: 15),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(bottom: 15.0,right: 50),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'This data will be displayed in your account',
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
                        Text(
                          'profile for security',
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
                    padding: const EdgeInsets.symmetric(
                      vertical: 30.0,
                    ),
                    child: Column(
                      children: [
                        pickedImage != null
                            ? Column(
                          children: [
                          Padding(
                            padding: const EdgeInsets.only(bottom: 40.0,left: 50),
                            child: Container(
                              width: 245,
                              height: 238,
                              decoration: BoxDecoration(
                                  color: Colors.transparent,
                                  // shape: BoxShape.circle,
                                  borderRadius: BorderRadius.circular(22.0),
                                  image: DecorationImage(
                                      fit: BoxFit.fill,
                                      image: FileImage(
                                          pickedImage ?? File('')))
                              ),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: InkWell(
                                      onTap: (){
                                        _showPicker();
                                      },
                                        child: Icon(Icons.cancel_outlined,size: 36,color: Color(0xFFFFFFFF),)),
                                  ),
                                ],
                              ),
                            ),
                          ),
                            Padding(
                              padding: const EdgeInsets.only(top: 40.0,left: 40),
                              child: InkWell(
                                onTap: (){
                                  AppRoutes.push(context, LocationScreen());
                                },
                                child: Container(
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
                        ],)
                            : Column(
                              children: [
                                InkWell(
                                  onTap: (){
                                    _showPicker();
                                  },
                                  child: Padding(
                                    padding: const EdgeInsets.only(left: 20.0),
                                    child: Container(
                                        width: 325,
                                        height: 129,
                                        decoration: BoxDecoration(
                                          borderRadius : BorderRadius.only(
                                            topLeft: Radius.circular(22),
                                            topRight: Radius.circular(22),
                                            bottomLeft: Radius.circular(22),
                                            bottomRight: Radius.circular(22),
                                          ),
                                          boxShadow : [BoxShadow(
                                              color: Color.fromRGBO(90, 108, 234, 0.07000000029802322),
                                              offset: Offset(0,0),
                                              blurRadius: 50
                                          )],
                                          color : Color.fromRGBO(255, 255, 255, 1),
                                        ),
                                      child: Column(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        crossAxisAlignment: CrossAxisAlignment.center,
                                        children: [
                                          Container(
                                              height:50,
                                              width: 50,
                                              child:Icon(Icons.photo_library,size: 46,color:Color(0xFF006533),)
                                          ),
                                          Text('From Gallery', textAlign: TextAlign.left, style: TextStyle(
                                              color: Color.fromRGBO(0, 0, 0, 1),
                                              fontFamily: 'BentonSansBold',
                                              fontSize: 14,
                                              letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                                              fontWeight: FontWeight.normal,
                                              height: 1.5 /*PERCENT not supported*/
                                          ),),
                                        ],
                                      ),
                                    ),
                                  ),
                                )
                              ],
                            ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
// Upload Your Photo Profile
