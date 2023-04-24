import 'package:flutter/material.dart';

import '../../Utils/appRoutes.dart';
import '../order/DetailProduct.dart';
import 'Home_Page.dart';
import 'Notification_Screen.dart';

class ExploreRestaurantScreen extends StatefulWidget {
  const ExploreRestaurantScreen({Key? key}) : super(key: key);

  @override
  State<ExploreRestaurantScreen> createState() => _ExploreRestaurantScreenState();
}

class _ExploreRestaurantScreenState extends State<ExploreRestaurantScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        bottomOpacity: 0.0,
        elevation: 0.0,
        toolbarHeight: 130,
        centerTitle: true,
        flexibleSpace: Padding(
          padding: const EdgeInsets.only(top: 1.0/10),
          child: Container(
            height: 160,
            decoration: BoxDecoration(
              // borderRadius: BorderRadius.only(topLeft: Radius.circular(60)),
              gradient: LinearGradient(
                stops: [.6, .5],
                begin: Alignment.bottomLeft,
                end: Alignment.topRight,
                colors: [
                  // Colors.grey.shade200,
                  Colors.white,
                  // Color(0xFFF4F8F6), // top Right part
                  Color(0xFBFBFB), // top Right part
                ],
              ),
              image: DecorationImage(
                image: AssetImage('images/final.png',),
                fit: BoxFit.cover,
                opacity: .2/5,
                colorFilter:
                ColorFilter.mode(Colors.grey[700]!, BlendMode.modulate),
              ),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 20.0,left: 15.0,right: 25.0),
                  child: Row(
                    children: [
                      Expanded(
                          child: Padding(
                            padding: const EdgeInsets.only(right: 10.0,top: 33.0,left: 10.0),
                            child: Text('Find Your Favorite Food', textAlign: TextAlign.left, style: TextStyle(
                                color: Color.fromRGBO(9, 4, 27, 1),
                                fontFamily: 'BentonSansBold',
                                fontSize: 31,
                                letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                                fontWeight: FontWeight.normal,
                                height: 1.5 /*PERCENT not supported*/
                            ),),
                          )
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 10.0,right: 10.0,top: 15),
                        child: InkWell(
                          onTap: (){
                            AppRoutes.push(context, NotificationScreen());
                          },
                          child: Container(
                            height: 45,
                            width: 45,
                            decoration: BoxDecoration(
                              color: Color(0xFFF6FBF8),
                              borderRadius: BorderRadius.circular(15),
                            ),
                            child: Icon(Icons.notifications_none_sharp,
                              size: 30,
                              color: Color(0xFF006533),
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
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(
                horizontal: 12,
                vertical: 5
            ),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(bottom: 8.0,left: 6),
                  child: Row(
                    children: [
                      Container(
                        width: 267,
                        height: 50,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: Colors.grey[200],
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(14.0),
                          child: Row(
                            children: [
                              Icon(Icons.search,size: 26,
                                color: Color(0xFFDA6317),
                              ),
                              SizedBox(width: 12,),
                              Text('What do you want to order?', textAlign: TextAlign.left, style: TextStyle(
                                  color: Color.fromRGBO(218, 99, 23, 1),
                                  fontFamily: 'Roboto',
                                  fontSize: 12,
                                  letterSpacing: 0.5,
                                  fontWeight: FontWeight.normal,
                                  height: 1
                              ),)
                            ],
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 8.0),
                        width: 49,
                        height: 50,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: Colors.grey[200],
                        ),
                        child: Icon(
                          Icons.filter_list_outlined,
                          size: 26,
                          color: Color(0xFFDA6317),
                        ),
                      ),
                    ],
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Nearest Restaurant', textAlign: TextAlign.left, style: TextStyle(
                          color: Color.fromRGBO(9, 4, 27, 1),
                          fontFamily: 'BentonSansBold',
                          fontSize: 15,
                          letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                          fontWeight: FontWeight.normal,
                          height: 1.5 /*PERCENT not supported*/
                      ),),
                    ],
                  ),
                ),

                SingleChildScrollView(
                  scrollDirection: Axis.vertical,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                     Row(
                       children: [
                         resurent_card(context),
                         resurent_card(context),
                       ],
                     ),
                     Row(
                       children: [
                         resurent_card(context),
                         resurent_card(context),
                       ],
                     ),
                     Row(
                       children: [
                         resurent_card(context),
                         resurent_card(context),
                       ],
                     ),

                    ],
                  ),
                ),


              ],
            ),
          ),
        ],
      ),
    );
  }
  ShaderMask Grident_Icon(
      Color topColor, Color bottomColor) {
    return ShaderMask(
      blendMode: BlendMode.srcIn,
      shaderCallback: (Rect bounds) => RadialGradient(
        stops: [1.0, 10],
        colors: [
          topColor,
          bottomColor,
        ],
      ).createShader(bounds),
    );
  }
}


Widget resurent_card(BuildContext context){
  return InkWell(
    onTap: (){
      AppRoutes.push(context, ProductItemScreen(imageUrl: 'https://cdn-gncif.nitrocdn.com/dQqMLyEIFxLtcgsNWIprSsdjlDrnXITG/assets/images/optimized/rev-9827931/wp-content/uploads/2022/05/creative-indian-restaurant-names-1024x682.jpg'));
    },
    child: Card(
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10)),
      elevation: 2.5,
      margin: EdgeInsets.only(left: 10,right: 10,bottom: 10,top: 10),
      child: Container(
        // height: 230,
        // width: 160,
        height: 184,
        width:147,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          //   boxShadow: [
          //     BoxShadow(
          //       color: Colors.white10,
          //       spreadRadius: 2,
          //       offset: Offset(0, 0),
          //     ),
          //   ],
          //   color: Colors.white,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Expanded(
                flex:1,
                // child:Text('jh'),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                      height: 100,
                      width: 100,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(12),
                        image: DecorationImage(
                          // image: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRU9CRIOUQTwoUx77S9dULnZVdYBAqwaH72TdkkaEEV&s'),
                          image: NetworkImage('https://cdn-gncif.nitrocdn.com/dQqMLyEIFxLtcgsNWIprSsdjlDrnXITG/assets/images/optimized/rev-9827931/wp-content/uploads/2022/05/creative-indian-restaurant-names-1024x682.jpg'),
                          fit: BoxFit.cover,
                          colorFilter:  ColorFilter.mode(Colors.black.withOpacity(0.8), BlendMode.dstATop),
                          opacity:1.0,
                        ),
                      )
                  ),
                )
              // Image.network('https://businessday.ng/wp-content/uploads/2021/05/Real-estate.jpg',fit: BoxFit.cover,),
            ),
            Expanded(
              flex:1,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Center(
                      child: Text('Vegan Resto', textAlign: TextAlign.left, style: TextStyle(
                          color: Color.fromRGBO(0, 0, 0, 1),
                          fontFamily: 'BentonSansBold',
                          fontSize: 16,
                          letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                          fontWeight: FontWeight.normal,
                          height: 1.5 /*PERCENT not supported*/
                      ),),
                    ),
                    Center(
                      child: Text('12 Mins', style: TextStyle(
                          color: Color.fromRGBO(0, 0, 0, 1),
                          fontFamily: 'BentonSansBook',
                          fontSize: 13,
                          letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                          fontWeight: FontWeight.normal,
                          height: 1.5 /*PERCENT not supported*/
                      ),),
                    )
                  ],
                ),
              ),),
          ],
        ),
      ),
    ),
  );
}