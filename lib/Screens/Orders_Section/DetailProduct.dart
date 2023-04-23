import 'dart:ui';

import 'package:flutter/material.dart';



class ProductItemScreen extends StatelessWidget {
  const ProductItemScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          body: Stack(
            children: [
              SizedBox(
                width: double.infinity,
                // child: Image.network("https://purepng.com/public/uploads/large/vegetables-btv.png"),
                child: Image.network("https://images.unsplash.com/photo-1573067485648-4cb2618b5e09?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80"),
              ),
              // buttonArrow(context),
              scroll(),
              Stack(
                alignment: Alignment.bottomCenter,
                children: [
                  Positioned(
                    top: 530,
                    child: Padding(
                    padding: const EdgeInsets.only(top: 30.0,left: 0.0,bottom: 30.0),
                    child: Container(
                        child: Center(
                          child:
                          Text('Add To Chart', textAlign: TextAlign.left, style: TextStyle(
                              color: Color.fromRGBO(254, 254, 255, 1),
                              fontFamily: 'BentonSansBold',
                              fontSize: 14,
                              letterSpacing: 0.5,
                              fontWeight: FontWeight.normal,
                              height: 1
                          ),),
                        ),
                        width: 326,
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
                ],
              )

            ],
          ),
        ));
  }

  buttonArrow(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: InkWell(
        onTap: () {
          Navigator.pop(context);
        },
        child: Container(
          clipBehavior: Clip.hardEdge,
          height: 55,
          width: 55,
          decoration: BoxDecoration(
            color: Colors.red,
            borderRadius: BorderRadius.circular(25),
          ),
          child: BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
            child: Container(
              height: 55,
              width: 55,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25),
              ),
              child: const Icon(
                Icons.arrow_back_ios,
                size: 20,
                // color: Colors.red,
              ),
            ),
          ),
        ),
      ),
    );
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
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          height: 34,
                          width: 76,
                          decoration: BoxDecoration(
                              color: Color(0xFF9BDABC),
                            borderRadius: BorderRadius.circular(18.5)
                          ),
                          child: Center(
                            child: Text('Popular', textAlign: TextAlign.left, style: TextStyle(
                                color: Color(0xFF006533),
                                fontFamily: 'BentonSansMedium',
                                fontSize: 12,
                                letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                                fontWeight: FontWeight.normal,
                                height: 1.5 /*PERCENT not supported*/
                            ),),
                          ),
                        ),
                       Row(
                         children: [
                           Container(
                             height: 34,
                             width: 34,
                             decoration: BoxDecoration(
                                 color: Color(0xFF9BDABC),
                                 borderRadius: BorderRadius.circular(18.5)
                             ),
                             // Color(0xFF9BDABC),

                             child: Center(
                               child: Icon(Icons.location_on,size: 22,color:Color(0xFF006533),),
                             ),
                           ),
                           SizedBox(width: 10.0,),
                           Container(
                             height: 34,
                             width: 34,
                             decoration: BoxDecoration(
                                 color: Color(0xFF9BDABC),
                                 borderRadius: BorderRadius.circular(18.5)
                             ),
                             child: Center(
                                 child: Icon(Icons.favorite,color: Colors.red,size: 22,)
                             ),
                           ),
                         ],
                       )
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 8.0,bottom: 8.0),
                    child: Text('Wijie Bar and Resto', textAlign: TextAlign.left, style: TextStyle(
                        color: Color.fromRGBO(9, 5, 28, 1),
                        fontFamily: 'BentonSansBold',
                        fontSize: 27,
                        letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                        fontWeight: FontWeight.normal,
                        height: 1.5 /*PERCENT not supported*/
                    ),),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 8.0,bottom: 5.0),
                    child: Row(
                      children: [
                        Row(
                          children: [
                            Icon(Icons.location_on,size: 22,color: Color(0xFF006533),),
                            Text('19 Km', textAlign: TextAlign.left, style: TextStyle(
                                color: Color.fromRGBO(59, 59, 59, 1),
                                fontFamily: 'BentonSansRegular',
                                fontSize: 14,
                                letterSpacing: 0.5,
                                fontWeight: FontWeight.normal,
                                height: 1
                            ),),
                          ],
                        ),
                        SizedBox(width: 14.0,),
                        Row(
                          children: [
                            Center(child: Icon(Icons.star_half,size: 22,color: Color(0xFF006533),)),
                            Text('4,8 Rating', textAlign: TextAlign.left, style: TextStyle(
                                color: Color.fromRGBO(59, 59, 59, 1),
                                fontFamily: 'BentonSansRegular',
                                fontSize: 14,
                                letterSpacing: 0.5,
                                fontWeight: FontWeight.normal,
                                height: 1
                            ),)
                          ],
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 10.0,bottom: 10.0),
                    child: Text('Most whole Alaskan Red King Crabs get broken down into legs, claws, and lump meat. We offer all of these options as well in our online shop, but there is nothing like getting the whole . . . .', textAlign: TextAlign.left, style: TextStyle(
                        color: Color.fromRGBO(0, 0, 0, 1),
                        fontFamily: 'BentonSansBook',
                        fontSize: 12,
                        letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                        fontWeight: FontWeight.normal,
                        height: 1.5 /*PERCENT not supported*/
                    ),),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 0.0,vertical: 30),
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
                        // Figma Flutter Generator ViewmoreWidget - TEXT
                        Text('View More', textAlign: TextAlign.left, style: TextStyle(
                            color: Color.fromRGBO(255, 123, 50, 1),
                            fontFamily: 'BentonSansBook',
                            fontSize: 12,
                            letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                            fontWeight: FontWeight.normal,
                            height: 1.5 /*PERCENT not supported*/
                        ),)
                      ],
                    ),
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        Detail_product('https://purepng.com/public/uploads/large/purepng.com-food-platefood-meat-plate-tasty-grill-breakfast-dinner-french-fries-launch-941524624215fnp4x.png'),
                        Detail_product('https://purepng.com/public/uploads/large/purepng.com-food-platefood-meat-plate-tasty-grill-breakfast-dinner-french-fries-launch-941524624270veqpm.png'),
                        Detail_product('https://purepng.com/public/uploads/large/vegetables-btv.png'),
                        Detail_product('https://purepng.com/public/uploads/large/purepng.com-amaranth-leavesvegetablesspinach-amaranth-leaves-leafs-941524684589dw2ks.png'),
                      ],
                    ),
                  ),


                  Padding(
                    padding: const EdgeInsets.only(top: 5.0),
                    child: Text('Testimonials', textAlign: TextAlign.left, style: TextStyle(
                        color: Color.fromRGBO(9, 4, 27, 1),
                        fontFamily: 'BentonSansBold',
                        fontSize: 15,
                        letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                        fontWeight: FontWeight.normal,
                        height: 1.5 /*PERCENT not supported*/
                    ),),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 0.0,right: 0,bottom: 8.0,top: 8.0),
                    child: Container(
                      width: 336,
                      height: 128,
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
                                    image: AssetImage('images/pf2.png',),
                                    fit: BoxFit.cover
                                ),
                              )
                          ),

                          Expanded(
                            child: Container(
                              padding: EdgeInsets.only(top: 10.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text('Dianne Russell', textAlign: TextAlign.left, style: TextStyle(
                                        color: Color.fromRGBO(9, 4, 27, 1),
                                        fontFamily: 'BentonSansMedium',
                                        fontSize: 15,
                                        letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                                        fontWeight: FontWeight.normal,
                                        height: 1.5 /*PERCENT not supported*/
                                    ),),
                                    Text('12 April 2021', textAlign: TextAlign.left, style: TextStyle(
                                        color: Color.fromRGBO(59, 59, 59, 1),
                                        fontFamily: 'Rubik',
                                        fontSize: 12,
                                        letterSpacing: 0.5,
                                        fontWeight: FontWeight.normal,
                                        height: 1
                                    ),),
                                  ],
                                ),
                                  SizedBox(height: 15.0,),
                                  Expanded(
                                    child: Text('This Is great, So delicious! You Must Here, With Your family . . ', textAlign: TextAlign.left, style: TextStyle(
                                        color: Color.fromRGBO(0, 0, 0, 1),
                                        fontFamily: 'BentonSansBook',
                                        fontSize: 12,
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
                            height: 33,
                            width: 53,
                            margin: EdgeInsets.only(right: 18.0,top: 18.0),
                            decoration: BoxDecoration(
                              color : Colors.green.shade50,
                              borderRadius: BorderRadius.circular(18.5)
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(Icons.star,size: 22,),
                                // Figma Flutter Generator 5Widget - TEXT
                                Text('5', textAlign: TextAlign.left, style: TextStyle(
                                    color: Colors.blue,
                                    fontFamily: 'BentonSansBold',
                                    fontSize: 16,
                                    letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                                    fontWeight: FontWeight.normal,
                                    height: 1.5 /*PERCENT not supported*/
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
                      width: 336,
                      height: 128,
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
                                    image: AssetImage('images/pf2.png',),
                                    fit: BoxFit.cover
                                ),
                              )
                          ),

                          Expanded(
                            child: Container(
                              padding: EdgeInsets.only(top: 10.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text('Dianne Russell', textAlign: TextAlign.left, style: TextStyle(
                                        color: Color.fromRGBO(9, 4, 27, 1),
                                        fontFamily: 'BentonSansMedium',
                                        fontSize: 15,
                                        letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                                        fontWeight: FontWeight.normal,
                                        height: 1.5 /*PERCENT not supported*/
                                    ),),
                                    Text('12 April 2021', textAlign: TextAlign.left, style: TextStyle(
                                        color: Color.fromRGBO(59, 59, 59, 1),
                                        fontFamily: 'Rubik',
                                        fontSize: 12,
                                        letterSpacing: 0.5,
                                        fontWeight: FontWeight.normal,
                                        height: 1
                                    ),),
                                  ],
                                ),
                                  SizedBox(height: 15.0,),
                                  Expanded(
                                    child: Text('This Is great, So delicious! You Must Here, With Your family . . ', textAlign: TextAlign.left, style: TextStyle(
                                        color: Color.fromRGBO(0, 0, 0, 1),
                                        fontFamily: 'BentonSansBook',
                                        fontSize: 12,
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
                            height: 33,
                            width: 53,
                            margin: EdgeInsets.only(right: 18.0,top: 18.0),
                            decoration: BoxDecoration(
                              color : Colors.green.shade50,
                              borderRadius: BorderRadius.circular(18.5)
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(Icons.star,size: 22,),
                                // Figma Flutter Generator 5Widget - TEXT
                                Text('5', textAlign: TextAlign.left, style: TextStyle(
                                    color: Colors.blue,
                                    fontFamily: 'BentonSansBold',
                                    fontSize: 16,
                                    letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                                    fontWeight: FontWeight.normal,
                                    height: 1.5 /*PERCENT not supported*/
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
                      width: 336,
                      height: 128,
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
                                    image: AssetImage('images/pf2.png',),
                                    fit: BoxFit.cover
                                ),
                              )
                          ),

                          Expanded(
                            child: Container(
                              padding: EdgeInsets.only(top: 10.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text('Dianne Russell', textAlign: TextAlign.left, style: TextStyle(
                                        color: Color.fromRGBO(9, 4, 27, 1),
                                        fontFamily: 'BentonSansMedium',
                                        fontSize: 15,
                                        letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                                        fontWeight: FontWeight.normal,
                                        height: 1.5 /*PERCENT not supported*/
                                    ),),
                                    Text('12 April 2021', textAlign: TextAlign.left, style: TextStyle(
                                        color: Color.fromRGBO(59, 59, 59, 1),
                                        fontFamily: 'Rubik',
                                        fontSize: 12,
                                        letterSpacing: 0.5,
                                        fontWeight: FontWeight.normal,
                                        height: 1
                                    ),),
                                  ],
                                ),
                                  SizedBox(height: 15.0,),
                                  Expanded(
                                    child: Text('This Is great, So delicious! You Must Here, With Your family . . ', textAlign: TextAlign.left, style: TextStyle(
                                        color: Color.fromRGBO(0, 0, 0, 1),
                                        fontFamily: 'BentonSansBook',
                                        fontSize: 12,
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
                            height: 33,
                            width: 53,
                            margin: EdgeInsets.only(right: 18.0,top: 18.0),
                            decoration: BoxDecoration(
                              color : Colors.green.shade50,
                              borderRadius: BorderRadius.circular(18.5)
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(Icons.star,size: 22,),
                                // Figma Flutter Generator 5Widget - TEXT
                                Text('5', textAlign: TextAlign.left, style: TextStyle(
                                    color: Colors.blue,
                                    fontFamily: 'BentonSansBold',
                                    fontSize: 16,
                                    letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                                    fontWeight: FontWeight.normal,
                                    height: 1.5 /*PERCENT not supported*/
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
}



Widget Detail_product(final String imageUrl){
  return Card(
    shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10)),
    elevation: 2.5,
    margin: EdgeInsets.only(left: 0.0,right: 18.0,bottom: 5,top: 5),
    child: Container(
      // height: 230,
      // width: 160,
      height: 171,
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
                        image: NetworkImage(imageUrl),
                        // image: NetworkImage('https://cdn-gncif.nitrocdn.com/dQqMLyEIFxLtcgsNWIprSsdjlDrnXITG/assets/images/optimized/rev-9827931/wp-content/uploads/2022/05/creative-indian-restaurant-names-1024x682.jpg'),
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
                    child: Text('Spacy fresh crab', textAlign: TextAlign.left, style: TextStyle(
                        color: Color.fromRGBO(9, 4, 27, 1),
                        fontFamily: 'BentonSansMedium',
                        fontSize: 15,
                        letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                        fontWeight: FontWeight.normal,
                        height: 1.5 /*PERCENT not supported*/
                    ),),
                  ),
                  Center(
                    child: Text('12 \$', textAlign: TextAlign.left, style: TextStyle(
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
  );
}