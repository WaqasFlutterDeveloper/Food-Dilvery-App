import 'dart:ui';

import 'package:flutter/material.dart';

import '../../Utils/appRoutes.dart';
import '../home/Home.dart';
import 'ResetPassword.dart';
import 'logIn_page.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          body: Stack(
            children: [
              SizedBox(
                width: double.infinity,
                child: Image.network("https://i.pinimg.com/564x/fd/da/b8/fddab84bff69a606cd3a1987e07ad35a.jpg"),
                // child: Image.network("https://images.unsplash.com/photo-1573067485648-4cb2618b5e09?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80"),
              ),
              // buttonArrow(context),
              scroll(),

            ],
          ),
        ));
  }
}

scroll() {
  return DraggableScrollableSheet(
      initialChildSize: 0.6,
      maxChildSize: 1.0,
      minChildSize: 0.6,
      builder: (context, scrollController) {
        return Container(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          clipBehavior: Clip.hardEdge,
          decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
                topLeft: const Radius.circular(35),
                topRight: const Radius.circular(35)),
          ),
          child: SingleChildScrollView(
            controller: scrollController,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 10, bottom: 25),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        height: 5,
                        width: 35,
                        color: Colors.black12,
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 5, bottom: 8),
                  child:   Container(
                    decoration: BoxDecoration(
                      borderRadius : BorderRadius.circular(18.5),
                      color : Color.fromRGBO(254, 173, 29, 0.10000000149011612),
                    ),
                    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 14),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        // Figma Flutter Generator MembergoldWidget - TEXT
                        Text('Member Gold', textAlign: TextAlign.left, style: TextStyle(
                            color: Color.fromRGBO(254, 173, 29, 1),
                            fontFamily: 'BentonSansMedium',
                            fontSize: 12,
                            letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                            fontWeight: FontWeight.normal,
                            height: 1.5 /*PERCENT not supported*/
                        ),)
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 8.0,bottom: 8.0),
                  child:Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Anam Wusono', textAlign: TextAlign.left, style: TextStyle(
                              color: Color.fromRGBO(9, 5, 28, 1),
                              fontFamily: 'BentonSansBold',
                              fontSize: 27,
                              letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                              fontWeight: FontWeight.normal,
                              height: 1.5 /*PERCENT not supported*/
                          ),),
                          // Figma Flutter Generator EmailsampleWidget - TEXT
                          Text('anamwp66@gmail.com', textAlign: TextAlign.left, style: TextStyle(
                              color: Color.fromRGBO(59, 59, 59, 1),
                              fontFamily: 'BentonSansRegular',
                              fontSize: 14,
                              letterSpacing: 0.5,
                              fontWeight: FontWeight.normal,
                              height: 1.5 /*PERCENT not supported*/
                          ),)
                        ],
                      ),
                      Icon(Icons.edit,color: Color(0xFF006533),)
                    ],
                  )
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10.0,bottom: 10.0),
                  child: Column(
                    children: [
                      InkWell(
                        onTap: (){
                          AppRoutes.replace(context, ResetPasswordScreen());
                        },
                        child: Container(
                          height: 40,
                          width: 200,
                          decoration: BoxDecoration(
                              color: Colors.grey.shade50,
                              borderRadius: BorderRadius.circular(10.5)
                          ),
                          child: Row(
                            children: [
                              Icon(Icons.lock,size: 18,color: Color(0xFF006533),),
                              SizedBox(width: 8.0,),
                              Text('Change Password', textAlign: TextAlign.left, style: TextStyle(
                                  color: Color.fromRGBO(59, 59, 59, 1),
                                  fontFamily: 'BentonSansMedium',
                                  fontSize: 14,
                                  letterSpacing: 0.5,
                                  fontWeight: FontWeight.normal,
                                  height: 1
                              ),),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(height: 20.0,),
                      InkWell(
                        onTap: (){
                          AppRoutes.closeAllScreensAndNavigate(context, LoginScreen());
                        },
                        child: Container(
                          height: 40,
                          width: 200,
                          decoration: BoxDecoration(
                              color: Colors.grey.shade50,
                              borderRadius: BorderRadius.circular(10.5)
                          ),
                          child: Row(
                            children: [
                              Center(child: Icon(Icons.logout,size: 18, color: Color(0xFFFF4B4B),)),
                              SizedBox(width: 8.0,),
                              Text('Log Out', textAlign: TextAlign.left, style: TextStyle(
                                  color: Color(0xFFFF4B4B),
                                  fontFamily: 'BentonSansMedium',
                                  fontSize: 14,
                                  letterSpacing: 0.5,
                                  fontWeight: FontWeight.normal,
                                  height: 1
                              ),),
                            ],
                          ),
                        ),
                      ),

                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 0.0,vertical: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      // Figma Flutter Generator FavoriteWidget - TEXT
                      Text('Favorite', textAlign: TextAlign.left, style: TextStyle(
                          color: Color.fromRGBO(9, 4, 27, 1),
                          fontFamily: 'BentonSansBold',
                          fontSize: 15,
                          letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                          fontWeight: FontWeight.normal,
                      ),),                      // Figma Flutter Generator ViewmoreWidget - TEXT
                     ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 0.0,right: 0,bottom: 8.0,top: 8.0),
                  child: Container(
                    width: 347,
                    height: 103,
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
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                            margin: EdgeInsets.only(top: 10,left: 8,bottom: 10,right: 12),
                            width: 62,
                            height: 62,
                            decoration: BoxDecoration(
                              borderRadius : BorderRadius.circular(16),
                              image : DecorationImage(
                                  // image: AssetImage('images/pf2.png',),
                                  image: NetworkImage('https://www.foodandwine.com/thmb/K_RqDtL-61c2t8H0MxDMRgr7NsQ=/750x0/filters:no_upscale():max_bytes(150000):strip_icc():format(webp)/Crispy-Crab-Cakes-with-Tomato-Butter-FT-recipe0719_1-ae6eb5920a274997a44718ebb380a686.jpg',),
                                  fit: BoxFit.cover
                              ),
                            )
                        ),

                        Expanded(
                          child: Container(
                            padding: EdgeInsets.only(top: 5.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text('Spacy fresh crab', textAlign: TextAlign.left, style: TextStyle(
                                        color: Color.fromRGBO(9, 4, 27, 1),
                                        fontFamily: 'BentonSansMedium',
                                        fontSize: 15,
                                        letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                                        fontWeight: FontWeight.normal,
                                        height: 1.5 /*PERCENT not supported*/
                                    ),),
                                    Text('Waroenk kita', textAlign: TextAlign.left, style: TextStyle(
                                        color: Color.fromRGBO(59, 59, 59, 1),
                                        fontFamily: 'BentonSansRegular',
                                        fontSize: 14,
                                        letterSpacing: 0.5,
                                        fontWeight: FontWeight.normal,
                                        height: 1
                                    ),),
                                  ],
                                ),
                                SizedBox(height: 15.0,),
                                Expanded(
                                  child:
                                  // Figma Flutter Generator PrieceWidget - TEXT
                                  Text('\$ 35', textAlign: TextAlign.left, style: TextStyle(
                                      color: Color(0xFF006533),
                                      fontFamily: 'BentonSansMedium',
                                      fontSize: 19,
                                      letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                                      fontWeight: FontWeight.normal,
                                      height: 1.5 /*PERCENT not supported*/
                                  ),),
                                )

                              ],
                            ),
                          ),
                        ),

                        Container(
                          height: 29,
                          width: 85,
                          margin: EdgeInsets.only(right: 18.0,top: 25.0),
                          decoration: BoxDecoration(
                              // color : Colors.green.shade50,
                              color: Color(0xFF006533),
                              borderRadius: BorderRadius.circular(18.5)
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              // Figma Flutter Generator BuyagainWidget - TEXT
                              Text('Buy Again', textAlign: TextAlign.left, style: TextStyle(
                                  color: Color.fromRGBO(255, 255, 255, 1),
                                  fontFamily: 'BentonSansMedium',
                                  fontSize: 12,
                                  letterSpacing: 0.5,
                                  fontWeight: FontWeight.normal,
                                  height: 1
                              ),)
                            ],
                          ),
                        ),

                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 0.0,right: 0,bottom: 8.0,top: 8.0),
                  child: Container(
                    width: 347,
                    height: 103,
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
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                            margin: EdgeInsets.only(top: 10,left: 8,bottom: 10,right: 12),
                            width: 62,
                            height: 62,
                            decoration: BoxDecoration(
                              borderRadius : BorderRadius.circular(16),
                              image : DecorationImage(
                                // image: AssetImage('images/pf2.png',),
                                  image: NetworkImage('https://www.foodandwine.com/thmb/K_RqDtL-61c2t8H0MxDMRgr7NsQ=/750x0/filters:no_upscale():max_bytes(150000):strip_icc():format(webp)/Crispy-Crab-Cakes-with-Tomato-Butter-FT-recipe0719_1-ae6eb5920a274997a44718ebb380a686.jpg',),
                                  fit: BoxFit.cover
                              ),
                            )
                        ),

                        Expanded(
                          child: Container(
                            padding: EdgeInsets.only(top: 5.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text('Spacy fresh crab', textAlign: TextAlign.left, style: TextStyle(
                                        color: Color.fromRGBO(9, 4, 27, 1),
                                        fontFamily: 'BentonSansMedium',
                                        fontSize: 15,
                                        letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                                        fontWeight: FontWeight.normal,
                                        height: 1.5 /*PERCENT not supported*/
                                    ),),
                                    Text('Waroenk kita', textAlign: TextAlign.left, style: TextStyle(
                                        color: Color.fromRGBO(59, 59, 59, 1),
                                        fontFamily: 'BentonSansRegular',
                                        fontSize: 14,
                                        letterSpacing: 0.5,
                                        fontWeight: FontWeight.normal,
                                        height: 1
                                    ),),
                                  ],
                                ),
                                SizedBox(height: 15.0,),
                                Expanded(
                                  child:
                                  // Figma Flutter Generator PrieceWidget - TEXT
                                  Text('\$ 35', textAlign: TextAlign.left, style: TextStyle(
                                      color: Color(0xFF006533),
                                      fontFamily: 'BentonSansMedium',
                                      fontSize: 19,
                                      letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                                      fontWeight: FontWeight.normal,
                                      height: 1.5 /*PERCENT not supported*/
                                  ),),
                                )

                              ],
                            ),
                          ),
                        ),

                        Container(
                          height: 29,
                          width: 85,
                          margin: EdgeInsets.only(right: 18.0,top: 25.0),
                          decoration: BoxDecoration(
                            // color : Colors.green.shade50,
                              color: Color(0xFF006533),
                              borderRadius: BorderRadius.circular(18.5)
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              // Figma Flutter Generator BuyagainWidget - TEXT
                              Text('Buy Again', textAlign: TextAlign.left, style: TextStyle(
                                  color: Color.fromRGBO(255, 255, 255, 1),
                                  fontFamily: 'BentonSansMedium',
                                  fontSize: 12,
                                  letterSpacing: 0.5,
                                  fontWeight: FontWeight.normal,
                                  height: 1
                              ),)
                            ],
                          ),
                        ),

                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 0.0,right: 0,bottom: 8.0,top: 8.0),
                  child: Container(
                    width: 347,
                    height: 103,
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
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                            margin: EdgeInsets.only(top: 10,left: 8,bottom: 10,right: 12),
                            width: 62,
                            height: 62,
                            decoration: BoxDecoration(
                              borderRadius : BorderRadius.circular(16),
                              image : DecorationImage(
                                // image: AssetImage('images/pf2.png',),
                                  image: NetworkImage('https://www.foodandwine.com/thmb/K_RqDtL-61c2t8H0MxDMRgr7NsQ=/750x0/filters:no_upscale():max_bytes(150000):strip_icc():format(webp)/Crispy-Crab-Cakes-with-Tomato-Butter-FT-recipe0719_1-ae6eb5920a274997a44718ebb380a686.jpg',),
                                  fit: BoxFit.cover
                              ),
                            )
                        ),

                        Expanded(
                          child: Container(
                            padding: EdgeInsets.only(top: 5.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text('Spacy fresh crab',
                                      textAlign: TextAlign.left, style: TextStyle(
                                        color: Color.fromRGBO(9, 4, 27, 1),
                                        fontFamily: 'BentonSansMedium',
                                        fontSize: 15,
                                        letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                                        fontWeight: FontWeight.normal,
                                        height: 1.5 /*PERCENT not supported*/
                                    ),),
                                    SizedBox(height: 6.0,),
                                    Text('Waroenk kita', textAlign: TextAlign.left, style: TextStyle(
                                        color: Color.fromRGBO(59, 59, 59, 1),
                                        fontFamily: 'BentonSansRegular',
                                        fontSize: 14,
                                        letterSpacing: 0.5,
                                        fontWeight: FontWeight.normal,
                                        height: 1
                                    ),),
                                  ],
                                ),
                                SizedBox(height: 15.0,),
                                Expanded(
                                  child:
                                  // Figma Flutter Generator PrieceWidget - TEXT
                                  Text('\$ 35', textAlign: TextAlign.left, style: TextStyle(
                                      color: Color(0xFF006533),
                                      fontFamily: 'BentonSansMedium',
                                      fontSize: 19,
                                      letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                                      fontWeight: FontWeight.normal,
                                      height: 1.5 /*PERCENT not supported*/
                                  ),),
                                )

                              ],
                            ),
                          ),
                        ),

                        Container(
                          height: 29,
                          width: 85,
                          margin: EdgeInsets.only(right: 18.0,top: 25.0),
                          decoration: BoxDecoration(
                            // color : Colors.green.shade50,
                              color: Color(0xFF006533),
                              borderRadius: BorderRadius.circular(18.5)
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              // Figma Flutter Generator BuyagainWidget - TEXT
                              Text('Buy Again', textAlign: TextAlign.left, style: TextStyle(
                                  color: Color.fromRGBO(255, 255, 255, 1),
                                  fontFamily: 'BentonSansMedium',
                                  fontSize: 12,
                                  letterSpacing: 0.5,
                                  fontWeight: FontWeight.normal,
                                  height: 1
                              ),)
                            ],
                          ),
                        ),

                      ],
                    ),
                  ),
                ),

              ],
            ),
          ),
        );
      });
}

ingredients(BuildContext context) {
  return Padding(
    padding: const EdgeInsets.symmetric(vertical: 10),
    child: Row(
      children: [
        const CircleAvatar(
          radius: 10,
          backgroundColor: Color(0xFFE3FFF8),
          child: Icon(
            Icons.done,
            size: 15,
            color: Colors.grey,
          ),
        ),
        const SizedBox(
          width: 10,
        ),
        Text(
          "4 Eggs",
          style: Theme.of(context).textTheme.bodyText2,
        ),
      ],
    ),
  );
}

steps(BuildContext context, int index) {
  return Padding(
    padding: const EdgeInsets.symmetric(vertical: 20),
    child: Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        CircleAvatar(
          backgroundColor: Colors.white,
          radius: 12,
          child: Text("${index + 1}"),
        ),
        Column(
          children: [
            SizedBox(
              width: 270,
              child: Text(
                "Your recipe has been uploaded, you can see it on your profile. Your recipe has been uploaded, you can see it on your",
                maxLines: 3,
                style: Theme.of(context)
                    .textTheme
                    .bodyText2!
                    .copyWith(color: Colors.red),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Image.network(
              "https://purepng.com/public/uploads/large/vegetables-btv.png",
              height: 155,
              width: 270,
            )
          ],
        )
      ],
    ),
  );
}




