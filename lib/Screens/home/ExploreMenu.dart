import 'package:flutter/material.dart';

import '../../Utils/appRoutes.dart';
import '../order/DetailProduct.dart';
import 'Filter_Page.dart';
import 'Home_Page.dart';
import 'Notification_Screen.dart';
class ExploreMenuScreen extends StatefulWidget {
  const ExploreMenuScreen({Key? key}) : super(key: key);

  @override
  State<ExploreMenuScreen> createState() => _ExploreMenuScreenState();
}

class _ExploreMenuScreenState extends State<ExploreMenuScreen> {
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
                      InkWell(
                        child: Container(
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
                      ),
                      InkWell(
                        onTap: (){
                          AppRoutes.push(context, FilterScreen());
                        },
                        child: Container(
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
                      ),
                    ],
                  ),
                ),


                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Popular Menu', textAlign: TextAlign.left, style: TextStyle(
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
                  scrollDirection: Axis.horizontal,
                  child: Column(
                    children: [
                      menu_card(context,'https://purepng.com/public/uploads/large/purepng.com-food-platefood-meat-plate-tasty-grill-breakfast-dinner-french-fries-launch-941524624215fnp4x.png'),
                      menu_card(context,'https://purepng.com/public/uploads/large/purepng.com-food-platefood-meat-plate-tasty-grill-breakfast-dinner-french-fries-launch-941524624270veqpm.png'),
                      menu_card(context,'https://purepng.com/public/uploads/large/vegetables-btv.png'),
                      menu_card(context,'https://purepng.com/public/uploads/large/purepng.com-amaranth-leavesvegetablesspinach-amaranth-leaves-leafs-941524684589dw2ks.png'),
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



Widget menu_card(BuildContext context,String imageUrl){
  return InkWell(
    onTap: (){
      AppRoutes.push(context, ProductItemScreen(imageUrl: imageUrl,));
    },
    child: Card(
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10)),
      elevation: 2.5,
      margin: EdgeInsets.only(left: 10,right: 15,bottom: 10,top: 10),
      child: Container(
        // height: 230,
        // width: 160,
        height: 149,
        width:323,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          //   boxShadow: [
          //     BoxShadow(
          //       color: Colors.white10,
          //       spreadRadius: 2,
          //       offset: Offset(0, 0),
          //     ),
          //   ],
          color: Colors.white,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
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
                          image: NetworkImage(imageUrl),
                          fit: BoxFit.cover,
                          colorFilter:  ColorFilter.mode(Colors.black.withOpacity(0.8), BlendMode.dstATop),
                          opacity:1.0,
                        ),
                      )
                  ),
                )
              // Image.network('https://businessday.ng/wp-content/uploads/2021/05/Real-estate.jpg',fit: BoxFit.cover,),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 50.0,left: 10,right: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Center(
                      child:       // Figma Flutter Generator MenunameWidget - TEXT
                      Text('Green Noddle', textAlign: TextAlign.left, style: TextStyle(
                          color: Color.fromRGBO(9, 4, 27, 1),
                          fontFamily: 'BentonSansMedium',
                          fontSize: 15,
                          letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                          fontWeight: FontWeight.normal,
                          height: 1.5 /*PERCENT not supported*/
                      ),)),
                  SizedBox(height: 10,),
                  Center(
                    child:       // Figma Flutter Generator RestaurantnameWidget - TEXT
                    Text('Noodle Home', textAlign: TextAlign.left, style: TextStyle(
                        color: Color.fromRGBO(59, 59, 59, 1),
                        fontFamily: 'BentonSansRegular',
                        fontSize: 14,
                        letterSpacing: 0.5,
                        fontWeight: FontWeight.normal,
                        height: 1
                    ),),),
                ],
              ),
            ),
            Expanded(
              flex:1,
              child: Padding(
                padding: const EdgeInsets.only(top: 50.0,left: 10,right: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Center(
                        child:       // Figma Flutter Generator PriceWidget - TEXT
                        Text('\$15', textAlign: TextAlign.left, style: TextStyle(
                            color: Color.fromRGBO(254, 173, 29, 1),
                            fontFamily: 'BentonSansBold',
                            fontSize: 22,
                            letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                            fontWeight: FontWeight.normal,
                            height: 1.5 /*PERCENT not supported*/
                        ),)
                    ),
                  ],
                ),
              ),),
          ],
        ),
      ),
    ),
  );
}